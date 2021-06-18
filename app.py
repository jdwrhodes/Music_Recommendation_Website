#%%
from flask import Flask, request, render_template
import pandas as pd
from sqlalchemy import create_engine
from config import db_password

# Connection String
db_string = f'postgres://nbumduguqxvlys:{db_password}@ec2-54-243-92-68.compute-1.amazonaws.com:5432/ddha93h7jehqkr'

# Create Engine
engine = create_engine(db_string)

#%%
# Import myMachineLearningModel
#%%
app = Flask(__name__)
#%%
@app.route("/")
def home():
    return render_template('index.html')
#%%
@app.route("/", methods=['POST'])
def home_post():
    text = request.form['fname']
    
    try:
        db_query = pd.read_sql_query(f"SELECT * FROM magnitude_data_v2 WHERE name = '{text}'", con=engine)
        
        db_result = pd.read_sql_query(f"select name, artists, row_num from magnitude_data_v2 where row_num between {db_query['row_num'][0] - 3} and {db_query['row_num'][0] + 3}", con=engine)

        result = f"I think you might like '{db_result['name'][0]}' by '{db_result['artists'][0]}'"

    except:
        result = "Sorry, we couldn't find that one. Please try again!"

    return render_template('index.html', data = result)
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