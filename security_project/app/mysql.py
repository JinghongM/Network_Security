from flask_mysqldb import MySQLdb
import json
def connect():
	conn = MySQLdb.connect(host="localhost",user="root",passwd="Jason19940705",db="security_test")
	cur = conn.cursor()
	return cur
def query(cur,sql_query):
	print(sql_query)
	num = cur.execute(sql_query)
	row_headers=[x[0] for x in cur.description]
	results=cur.fetchall()
	json_data=[]
	for result in results:
		json_data.append(dict(zip(row_headers,result)))
	if len(json_data) == 0:
		raise Exception('No value selected')
	else:
		return json.dumps(json_data)
