import sqlite3 as sq

conn = sq.connect('testi.sqlite')

cursor = conn.cursor()
cursor.execute("delete from users;")
cursor.execute("delete from project;")
cursor.execute("delete from suite;")
cursor.execute("delete from caseq;")
cursor.execute("insert into user(email, password) values('cool.makowka@ya.ru', 'vfrvfrvfr111');")
conn.commit()
cursor.execute("SELECT id, email, password, create_time FROM user where id=1;")
results = cursor.fetchall()
print(results)