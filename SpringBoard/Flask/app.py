from http.client import ImproperConnectionState
import imp
from flask import Flask
from flask import request 

app = Flask(__name__)

@app.route('/hello')
def say_hello():
    return 'hello'


######### POST REQUEST ##########

@app.route('/')
def landing():
    return """
        <h1>Do something</h1>
        <a href = '/add-comment'>Make a comment</a>
    """


@app.route('/add-comment')
def add_comment_form():
    return """
        <h1>Add Comment</h1>
        <form method="POST">
            <input type='text' placeholder='comment' name='comment'/>
            <input type='text' placeholder='username' name='username'/>
            <button>Submit</button>
        </form>
    """

@app.route('/add-comment', methods=["POST"])
def save_comment():
    comment = request.form["comment"]
    username = request.form["username"]
    return f"""
    <h1>Saved your comment</h1>
    <ul>
        <li>Username: {username}</li>
        <li>Comment: {comment}</li>
    </ul>
    """
 
######## vaiables in urls

POSTS = { 
    1: "I like chicken",
    2: "I hate chicken",
    3: "Double cheeseburger",
    4: "whatever"
}

@app.route('/posts/<int:id>')
def find_post(id):
    post = POSTS.get(id)
    return f"<p>{post}</p>"