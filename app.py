#%%
from flask import Flask, render_template

#%%
# Import myMachineLearningModel
#%%
app = Flask(__name__)
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