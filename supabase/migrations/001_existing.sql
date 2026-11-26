create table public.existing_directory (
  id integer primary key,
  display_name text not null,
  private_email text not null
);
alter table public.existing_directory enable row level security;
create policy browse on public.existing_directory for select to anon using (true);
grant select on public.existing_directory to anon;
