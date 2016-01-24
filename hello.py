# Based on "Flask is Fun" demo from Flask documentation.

import os

from flask import Flask
app = Flask(__name__)

@app.route("/")
def hello():
    return "Hello World!"

if __name__ == "__main__":
    app.config.update(
        SERVER_NAME='127.0.0.1:%d' % int(os.environ.get('PORT', 5000)),
    )
    app.run(host='0.0.0.0')
