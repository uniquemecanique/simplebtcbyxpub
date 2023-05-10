#!/bin/bash

read -p "MySQL username: " MYSQL_USER
read -sp "MySQL password: " MYSQL_PASSWORD
echo

read -p "New database name: " DATABASE_NAME

DB_EXISTS=$(mysql -u${MYSQL_USER} -p${MYSQL_PASSWORD} -e "SHOW DATABASES LIKE '${DATABASE_NAME}'" | grep "${DATABASE_NAME}" > /dev/null; echo "$?")

if [ ${DB_EXISTS} -eq 0 ]; then
  echo "A database with the name ${DATABASE_NAME} already exists."
else
  mysql -u${MYSQL_USER} -p${MYSQL_PASSWORD} -e "CREATE DATABASE ${DATABASE_NAME}"
  echo "Database ${DATABASE_NAME} created."
fi

mysql -u${MYSQL_USER} -p${MYSQL_PASSWORD} -e "USE ${DATABASE_NAME};
CREATE TABLE btc_config (
  id INT AUTO_INCREMENT,
  xpath INT,
  PRIMARY KEY(id)
);
INSERT INTO btc_config (xpath) VALUES (0);
"

echo "Table btc_config created and initialized in database ${DATABASE_NAME}."
