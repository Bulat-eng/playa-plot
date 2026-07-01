-- Playa Plot — Supabase schema + Row-Level Security
-- Run this once in your Supabase project: Dashboard → SQL Editor → New query → paste → Run.
-- It creates the `templates` table and locks it down so each user can only ever
-- see and touch their OWN rows. This RLS is what makes shipping the anon key safe.

create table if not exists public.templates (
  id         uuid primary key default gen_random_uuid(),
  user_id    uuid not null references auth.users(id) on delete cascade,
  name       text not null,
  data       jsonb not null,            -- serialized layout: { v, plotW, plotD, items[] }
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

-- Fast "list my templates, newest first"
create index if not exists templates_user_updated_idx
  on public.templates (user_id, updated_at desc);

-- Turn on Row-Level Security (deny-all until policies below allow)
alter table public.templates enable row level security;

-- Each policy scopes access to the logged-in user's own rows.
drop policy if exists "own-select" on public.templates;
create policy "own-select" on public.templates
  for select using (auth.uid() = user_id);

drop policy if exists "own-insert" on public.templates;
create policy "own-insert" on public.templates
  for insert with check (auth.uid() = user_id);

drop policy if exists "own-update" on public.templates;
create policy "own-update" on public.templates
  for update using (auth.uid() = user_id) with check (auth.uid() = user_id);

drop policy if exists "own-delete" on public.templates;
create policy "own-delete" on public.templates
  for delete using (auth.uid() = user_id);
