from flask_mysqldb import MySQLdb

def connect():
	conn = MySQLdb.connect(host="localhost",user="root",passwd="Jason19940705",db="security_test")
	cur = conn.cursor()
	return cur
def query(cur,sql_query):
	print(sql_query)
	cur.execute(sql_query)
	data=cur.fetchall()
	return data
