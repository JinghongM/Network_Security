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
		try:
			result = json.loads(query(connect(),form.username.data,form.password.data))
			print(result)
			return render_template('result.html',user_name = form.username.data,information=result)
		except:
			flash("Invalid username/password")
			return redirect('/login')
	return render_template('login.html',form=form)

