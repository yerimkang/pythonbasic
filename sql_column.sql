

drop table if exists day_visitor_realtime;

create table if not exists day_visitor_realtime (
ipaddress varchar(16),
iptime_first datetime,
before_url varchar(250),
device_info varchar(40),
os_info varchar(40),
session_id varchar(80)
);

INSERT INTO day_visitor_realtime (
ipaddress, iptime_first, before_url, device_info
)
VALUES ('192.168.0.1', '2021-12-19 16:14:28', 'localhost', 'PC')
	,  ('192.168.0.2', '2021-12-19 16:34:31', 'localhost', 'iPhone');
SELECT * FROM day_visitor_realtime;

INSERT INTO day_visitor_realtime (
ipaddress, iptime_first, before_url, device_info
)
VALUES ('12345678901234567', '2021-12-19 16:14:28', 'localhost', 'PC');
#길이 때문에 에러 발생
SELECT * FROM day_visitor_realtime;

# 데이터삽입:
INSERT INTO `python`.`day_visitor_realtime` (`session_id`) VALUES('12345.567890');
INSERT INTO `python`.`day_visitor_realtime` (`session_id`) VALUES('1234.567890');
INSERT INTO `python`.`day_visitor_realtime` (`session_id`) VALUES ('123');
INSERT INTO `python`.`day_visitor_realtime` (`session_id`) VALUES ('1234');
INSERT INTO `python`.`day_visitor_realtime` (`session_id`) VALUES ('12345');
SELECT * FROM day_visitor_realtime;

DROP TABLE IF EXISTS day_visitor_realtime;
CREATE TABLE day_visitor_realtime (
id INT,
ipaddress varchar(16),
iptime_first datetime,
before_url varchar(250),
device_info varchar(40),
os_info varchar(40),
session_id varchar(80),
PRIMARY KEY(id)
);
INSERT INTO day_visitor_realtime (
id, ipaddress, iptime_first, before_url, device_info, os_info
/*session_id*/
)
VALUES (1, 'asdf', NOW(), 'aa', 'asdf', 'aa')
, (1, 'asdf2', NOW(), 'aa2', 'asdf2', 'aa2');
# Error Code: 1062. Duplicate entry '1' for key 'PRIMARY' 오류 발생

# 참조할 테이블
CREATE TABLE orders (
order_id INT,
customer_id INT,
order_date DATETIME,
PRIMARY KEY(order_id)
);

INSERT into orders values(1,1,now());
INSERT into orders values(2,1,now());
INSERT into orders values(3,1,now());
select * from orders;

CREATE TABLE order_detail (
  order_id INT,
  product_id INT,
  product_name VARCHAR(200),
  order_date DATETIME,
  CONSTRAINT FK_ORDERS_ORDERID FOREIGN KEY (order_id) REFERENCES orders(order_id),
  PRIMARY KEY(order_id, product_id)
);

INSERT into order_detail (order_id, product_id, product_name)
 values(4,101,'iphone')
     , (4,101,'ipad');
#값이 없을 때 1452
select * from orders;