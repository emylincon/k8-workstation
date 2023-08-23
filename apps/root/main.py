from flask import Flask

app = Flask(__name__)

@app.route("/")
def root():
    return """
<html>
    <head><title>Root App</title></head>
    <body>
    <h1>Root App</h1>
    <p><a href="/calc">Calc</a></p>
    <p><a href="/greet">Greet</a></p>
    </body>
</html>
"""


if __name__ == '__main__':
    app.run(debug=False, host='0.0.0.0', port=5003)