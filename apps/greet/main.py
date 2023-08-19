from flask import Flask

app = Flask(__name__)

@app.route("/")
def root():
    return "<p>greeting app</p>"

@app.route("/greet")
def greet():
    return "<p>hello</p>"

if __name__ == '__main__':
    app.run(debug=False, host='0.0.0.0', port=5001)