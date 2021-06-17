#%%
from flask import Flask, render_template, request, redirect, url_for
from flask_sqlalchemy import SQLAlchemy
from flask_pymongo import PyMongo
from pymongo import MongoClient
#%%
# Import myMachineLearningModel
#%%
app = Flask(__name__)
#%%
app.config["MONGO_URI"] = "mongodb://localhost:27017/tracks"
mongo = PyMongo(app)
#%%
@app.route("/")
def index():
    tracks = mongo.db.trracks.find_one()
    return render_template("index.html", tracks=tracks)
#%%
@app.route("/data")
def scrape():
    tracks_data = mongo.db.tracks
    #tracks.update({}, tracks_data, upsert=True)
    return redirect('/', code = 302)
#%%
@app.route("/")
def home():
    return render_template('index.html')

#%%
@app.route("/how_to")
def how_to():
    return render_template('how_to.html')
#%%
@app.route("/about")
def about():
    return render_template('about.html')

#%%
# Route to a webpage with a form

#%%
# Post route from the form
    # Call the machine learning model .predict method on the data that was passed from the form

    # Jsonify and python dictionaries to simiply dictionaries being passed (Jsonify)
        # Remember, Flask is going to look for files inside different folder names that are referenced
        # return Json and python dictionaries
        # Ajax calling on the webform will update a div id with the results