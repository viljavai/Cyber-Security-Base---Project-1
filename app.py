from flask import Flask
#from flask_limiter import Limiter
#from flask_limiter.util import get_remote_address
#from flask_wtf import CSRFProtect
from os import getenv

app = Flask(__name__)
app.secret_key = "SECRET_KEY"
#csrf = CSRFProtect(app)


"""
limiter = Limiter(
    key_func=get_remote_address,
    app=app, 
    default_limits=["200 per day", "50 per hour"]
)
"""

import routes