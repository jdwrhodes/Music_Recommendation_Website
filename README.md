# Project Overview
Our project entails creating a music recommendation website using machine learning to analyze song and artist characteristics and make recommendations to users for additional songs.

## Hypothesis and Goals
### Hypothesis
- Can machine learning predict what songs a user will enjoy based on the audio features of songs they like?
### Additional Questions Posed
- Can we predict an artist's most popular song based on audio elements?
- Can we predict the most popular song off an album based on audio elements?
- Can we use audio elements to predict a song a listener would like?
- Can we use audio elements of an artist to predict another artist a listener would like?

## Communication Protocols
- Primary Communication Medium: Slack
- Project Management: Google Drive, Jira
- Meeting Times: Primarily Monday/Wednesday class times with possible Zoom calls if needed.
- Procedure if someone misses a class or zoom meeting: Pass along notes from meetings to keep people up to speed.
- How will we keep teammates apprised of progress/issues/notes: Utilize Jira to track projects and store notes and vital information in Google Docs to keep team members apprised of progress.

## Project Description
### Technologies Used
#### Data Cleaning and Analysis
Cleaning and analysing the data will be done using Pandas through Python in Jupyter Notebook. 

![Data Cleaning and Analysis](resources/pca_analysis_head.png)

#### Database Storage
Our database will be stored and managed in SQL using Postgres. 

![Database Diagram](resources/updated_quickDB.png)

#### Machine Learning
Using the SciKitLearn Python library we will develop, test, and train our model. 

#### Dashboard
We will investigate the potential for using Tableau to develop our interactive database or else use Flask to deploy our model through an interactive dashboard designed using Javascript D3 for a combination of HTML, Canvas, and SVG.
Heroku will be used for hosting. 

### Data Source
Our primary data source is the Kaggle dataset titled Spotify Dataset 1922-2021, ~600k Tracks which contains information and audio feature measurements fon tracks and artists obtained using the Spotify API.

![Tracks Data Head](resources/tracks_datahead.png)