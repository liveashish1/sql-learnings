/*------------------------loops------------------------------------------*/

create table loop_table(val int)

delimiter $$
create procedure insert_data()
begin
set @var  = 10 ;
generate_data : loop
insert into loop_table values (@var);
set @var = @var + 1  ;
if @var  = 100 then  
	leave generate_data;
end if ;
end loop generate_data;
end $$

call insert_data()

select * from loop_table

/*------------------------loops------------------------------------------*/

use ash_new; 
create table loop1_tab1aa(v int);
drop procedure ashqq1q;
delimiter &&
create procedure ashqq1q()
begin
set @var=10;
generate_loop1: LOOP
    IF @var%3 = 0 THEN
        INSERT INTO loop1_tab1 VALUES (@var);
    END IF;
    SET @var = @var + 1;
    IF @var = 100 THEN
        LEAVE generate_loop1;
    END IF;
END LOOP generate_loop1;
end&&
call ashqq1q();
select * from loop1_tab1;
