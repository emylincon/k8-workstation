from flask import Flask

app = Flask(__name__)

@app.route("/")
def root():
    return "<p>calculator</p>"


@app.route("/calculator")
def calc():
    return "<p>2+2</p>"

if __name__ == '__main__':
    app.run(debug=False, host='0.0.0.0', port=5002)