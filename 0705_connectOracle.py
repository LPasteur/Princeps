import cx_Oracle
conn = cx_Oracle.connect('scott/tiger@localhost:1521/xe')
db = conn.cursor()
db.execute('SELECT * FROM tab')
for record in db:
    print(record)
db.close()
conn.close()
