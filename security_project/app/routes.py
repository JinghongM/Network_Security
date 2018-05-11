from app import app
from flask import render_template,flash,redirect
from app.forms import LoginForm
from app.mysql import connect,query
import json
@app.route('/',methods=['POST','GET'])
@app.route('/login',methods=['POST','GET'])
def login():
	form = LoginForm()
	if form.validate_on_submit():
		sql_query = "select user_information from user_profile where user_name='"+form.username.data+"'" + "and password='" + form.password.data+"'";
		try:
			result = json.loads(query(connect(),sql_query))
			print(result)
			print(type(result))
			print(len(result))
			return render_template('result.html',user_name = form.username.data,information=result)
		except:
			flash("Invalid username/password")
			return redirect('/login')
	return render_template('login.html',form=form)

