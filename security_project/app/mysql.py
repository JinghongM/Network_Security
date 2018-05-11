from flask_mysqldb import MySQLdb
import json
import os
def connect():
	conn = MySQLdb.connect(host="localhost",user="root",passwd="root",db="security_test")
	cur = conn.cursor()
	return cur
def query(cur,username,password):
	if os.environ["MODE"] == "Insecure":
		num = cur.execute("select user_information from user_profile where user_name='"+username+"'" + "and password='" + password+"';")
	elif os.environ["MODE"] == "Secure":
		num = cur.execute("select user_information from user_profile where user_name=%s and password=%s;" ,(username,password))
	row_headers=[x[0] for x in cur.description]
	results=cur.fetchall()
	json_data=[]
	for result in results:
		json_data.append(dict(zip(row_headers,result)))
	if len(json_data) == 0:
		raise Exception('No value selected')
	else:
		return json.dumps(json_data)
