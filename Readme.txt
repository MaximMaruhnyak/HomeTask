Enter password:
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 14
Server version: 5.1.45-community MySQL Community Server (GPL)

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

     1) Создаем базу данных "article"

mysql> create database if not exists article;
Query OK, 1 row affected (0.03 sec)

     2) Выбираем базу данных с которой будем работать

mysql> use article;
Database changed

     3) Выводим базы данных которые существуют

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| article            |
| mysql              |
| test               |
+--------------------+
4 rows in set (0.00 sec)

     4) Создаем таблицу "t1"

mysql> create table t1 (user_id int(5) not null auto_increment,
    -> username varchar(50),
    -> primary key(user_id),
    -> index(username));
Query OK, 0 rows affected (0.05 sec)

     5) Создаем таблицу "t2"

mysql> create table t2 (phone_id int(5) not null auto_increment,
    -> user_id int(5) not null,
    -> phone_number int(10) not null,
    -> primary key(phone_id),
    -> index(user_id, phone_number));
Query OK, 0 rows affected (0.04 sec)


     6) Создаем таблицу "t3"

mysql> create table t3 (room_id int(5) not null auto_increment,
    -> phone_id int(5) not null,
    -> room_number int(4) not null,
    -> primary key(room_id),
    -> index(phone_id, room_number));
Query OK, 0 rows affected (0.02 sec)

     7) Выводим таблицы которые создали в базе "article"

mysql> show tables;
+-------------------+
| Tables_in_article |
+-------------------+
| t1                |
| t2                |
| t3                |
+-------------------+
3 rows in set (0.01 sec)

     8) Заполняем данными таблицу "t1"

mysql> insert into t1 (username) value ('Jim');
Query OK, 1 row affected (0.04 sec)

mysql> insert into t1 (username) value ('Bob');
Query OK, 1 row affected (0.00 sec)

mysql> insert into t1 (username) value ('Tom');
Query OK, 1 row affected (0.00 sec)

mysql> insert into t1 (username) value ('Fred');
Query OK, 1 row affected (0.00 sec)

     9) Выводим все содержимое таблицы "t1", что бы увидеть как она заполнена

mysql> select * from t1;
+---------+----------+
| user_id | username |
+---------+----------+
|       2 | Bob      |
|       4 | Fred     |
|       1 | Jim      |
|       3 | Tom      |
+---------+----------+
4 rows in set (0.00 sec)

     10) Заполняем данными таблицу "t2"

mysql> insert into t2 (user_id, phone_number) value ('2','201');
Query OK, 1 row affected (0.00 sec)

mysql> insert into t2 (user_id, phone_number) value ('4','203');
Query OK, 1 row affected (0.00 sec)

mysql> insert into t2 (user_id, phone_number) value ('3','202');
Query OK, 1 row affected (0.03 sec)

mysql> insert into t2 (user_id, phone_number) value ('1','205');
Query OK, 1 row affected (0.00 sec)

    11) Выводим все содержимое таблицы "t2", что бы увидеть как она заполнена

mysql> select * from t2;
+----------+---------+--------------+
| phone_id | user_id | phone_number |
+----------+---------+--------------+
|        4 |       1 |          205 |
|        1 |       2 |          201 |
|        3 |       3 |          202 |
|        2 |       4 |          203 |
+----------+---------+--------------+
4 rows in set (0.00 sec)

    12) Заполняем данными таблицу "t3"

mysql> insert into t3 (phone_id, room_number) value ('4','30');
Query OK, 1 row affected (0.00 sec)

mysql> insert into t3 (phone_id, room_number) value ('1','32');
Query OK, 1 row affected (0.00 sec)

mysql> insert into t3 (phone_id, room_number) value ('2','35');
Query OK, 1 row affected (0.00 sec)

mysql> insert into t3 (phone_id, room_number) value ('3','50');
Query OK, 1 row affected (0.00 sec)

     13) Выводим все содержимое таблицы "t2", что бы увидеть как она заполнена

mysql> select * from t3;
+---------+----------+-------------+
| room_id | phone_id | room_number |
+---------+----------+-------------+
|       3 |        1 |          32 |
|       4 |        2 |          35 |
|       5 |        3 |          50 |
|       1 |        4 |          30 |
+---------+----------+-------------+
4 rows in set (0.00 sec)

     14) Выводим содержимое столбца "username" из таблицы "t1"

mysql> select username from t1;
+----------+
| username |
+----------+
| Bob      |
| Fred     |
| Jim      |
| Tom      |
+----------+
4 rows in set (0.00 sec)

     15) Выводим содержимое столбца "phone_id", "username" соответственно из таблицы "t1", "t3"

mysql> select phone_id, username from t1, t3
    -> where user_id=phone_id;
+----------+----------+
| phone_id | username |
+----------+----------+
|        2 | Bob      |
|        4 | Fred     |
|        1 | Jim      |
|        3 | Tom      |
+----------+----------+
4 rows in set (0.02 sec)

     16) Подсчитываем количество строк в столбце "username" из таблицы "t1"

mysql> select count(username) from t1;
+-----------------+
| count(username) |
+-----------------+
|               4 |
+-----------------+
1 row in set (0.05 sec)
