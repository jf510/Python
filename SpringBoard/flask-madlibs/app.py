from distutils.log import debug
from flask import Flask, render_template, request
from stories import story
from flask_debugtoolbar import DebugToolbarExtension

app = Flask(__name__)
app.config['SECRET_KEY'] = 'secret'

debug = DebugToolbarExtension(app)


@app.route('/story')
def make_madlib():

    madlib = story.generate(request.args)

    return render_template("madlib.html", text = madlib)

@app.story('/')
def make_form():

    words = story.prompts

    return render_template('form', words = words)