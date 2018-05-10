from app import app
from flask import render_template,flash,redirect
from app.forms import LoginForm
from app.mysql import connect,query
@app.route('/success')
def success():
	return render_template('success.html')

@app.route('/',methods=['POST','GET'])
@app.route('/login',methods=['POST','GET'])
def login():
	form = LoginForm()
	if form.validate_on_submit():
		sql_query = "select user_information from user_profile where user_name=%s" %form.username.data
		result = query(connect(),sql_query)
		return render_template('result.html',user_name = form.username.data,information=result[0][0])
	return render_template('login.html',form=form)

