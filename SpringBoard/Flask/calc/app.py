# Put your app in here.
from flask import Flask
from operations import add, sub, mult, div
from flask import request

app = Flask(__name__)


@app.route('/add')
def addition():
    
    a = request.args.get('a', type = int)
    b = request.args.get('b', type = int)
    x = add(a,b)

    return str(x)
    
@app.route('/sub')
def subtraction():
    
    a = request.args.get('a', type = int)
    b = request.args.get('b', type = int)
    x = sub(a,b)

    return str(x)

@app.route('/mult')
def multiply():
    
    a = request.args.get('a', type = int)
    b = request.args.get('b', type = int)
    x = mult(a,b)

    return str(x)

@app.route('/div')
def divide():
    
    a = request.args.get('a', type = int)
    b = request.args.get('b', type = int)
    x = div(a,b)

    return str(x)


operations = {
    "add": add,
    "sub": sub,
    "mult": mult,
    "div": div
}

@app.route('/math/<op>')
def do_math(op):

    a = request.args.get('a', type = int)
    b = request.args.get('b', type = int)
    operation = operations[op](a,b)

    return str(operation)

    operation = operations