use employees;

select * from departments;

select * from titles;
select distinct title from titles;

#select where 150,000을 넘는 데이터 필터링
select * from salaries where salary > 150000;

#dept_manager테이블에서 emp_no가 111133인 데이터 조회
select * from dept_manager where emp_no = 111133;

#between 시작 and 끝 시작부터 끝까지 값의 범위에 해당되는 것을 반환 (데이터 형은 number,text, dates)
select * from dept_manager
where emp_no between 111133 and 111939;

#like 연산자는 where절에 사용됨, like연산에 사용할 수 있는 wildcards는 두가지 / % / _
#select column1 from table_name where columnN like pattern;

#like연산자는 where절에 사용되고 특정 패턴에 일치하면 반환 합니다.
select * from employees where first_name like 'Geo%';

#in연산자는 where절에서 주어진 여러 개의 값에 대해 비교
#select column_name(s) from table_name where column_name in (value1);

#title 테이블에서 title컬럼의 값이 Senior Engineer이고 from_date컬럼이 2002-06-01보다 큰 데이터를 조회해보세요.
select * from titles where title = 'Senir Engineer' and from_date > '2002-06-01';

select title,count(*)
from titles
where to_date = '9999-01-01'
group by 1
having count(*) <10
;

use python;
CREATE TABLE `users` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `email` varchar(255) COLLATE utf8_bin NOT NULL,
    `password` varchar(255) COLLATE utf8_bin NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin
AUTO_INCREMENT=1 ;

select * from users;