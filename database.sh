echo "Creating database, and setting up tables."
echo "Please login to mysql"
mysql -u root -p  -Bse "create database crypto; use crypto; create table trades (id int NOT NULL AUTO_INCREMENT, amount  float, rate float, type varchar(5), date date, date selldate, PRIMARY KEY (id)); create table mytrades(id int NOT NULL AUTO_INCREMENT, amount  float, rate float, type varchar(5), date date, date selldate, PRIMARY KEY (id));create table macd (id int NOT NULL AUTO_INCREMENT, macd float, ema9 float, time timestamp, type varchar(10), PRIMARY KEY (id)); create user 'trader'@'localhost' IDENTIFIED BY 'Cf2w[\bSf4mRYU.b'; GRANT INSERT, DROP, SELECT, UPDATE on *.* to 'trader'@'localhost'; FLUSH PRIVILEGES;"

echo "Unless I printed errors, everything probably worked"
