drop table computer_terms;
create table computer_terms(term text, category text, comments char(16));
create index computer_terms_index1 on computer_terms using btree(term);
create index computer_terms_index2 on computer_terms using btree(category);
insert into computer_terms values('computer display', 'X-A01-Y', 'a comment 1');
insert into computer_terms values('computer graphics', 'T-B01-Y', 'a comment 2');
insert into computer_terms values('computer programmer', 'S-Z01-Y', 'a comment 3');
vacuum computer_terms;
select * from computer_terms;
select * from computer_terms where category = 'X-A01-Y';
select * from computer_terms where category ~* 'x-a01-y';
select * from computer_terms where category like '_-A01-_';
select * from computer_terms where category like '_-A%';
select * from computer_terms where term ~ 'computer [dg]';
select * from computer_terms where term ~* 'computer [DG]';
select *,character_length(term) from computer_terms;
select *,octet_length(term) from computer_terms;
select *,position('s' in term) from computer_terms;
select *,substring(term from 10 for 4) from computer_terms;