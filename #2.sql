use ash_new; 
create table loop1_tab1(v int);

drop procedure ashqq1;
delimiter &&
create procedure ashqq1()
begin
set @var=10;
generate_loop1:loop
if @var%3=0 then
insert into loop1_tab1 values (@var);
set @var=@var+1;
if @var=100 then
	leave generate_loop1;
end if;
end if;
end loop generate_loop1;
end&&

call ashqq();
select * from loop1_tab;