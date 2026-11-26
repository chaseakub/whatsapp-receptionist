create table public.directory (
  id integer primary key,
  display_name text not null,
  private_email text not null
);
alter table public.directory enable row level security;
create policy browse on public.directory for select to anon using (true);
grant select on public.directory to anon;
