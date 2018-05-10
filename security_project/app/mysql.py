from flask_mysqldb import MySQLdb

def connect():
	conn = MySQLdb.connect(host="localhost",user="root",passwd="Jason19940705",db="security_test")
	cur = conn.cursor()
	return cur
def query(cur,sql_query):
	print(sql_query)
	num = cur.execute(sql_query)
	if(num == 0):
		raise Exception('No value selected')
	else:
		data=cur.fetchall()
		return data
