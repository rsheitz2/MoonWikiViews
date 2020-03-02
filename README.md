Wikipedia Full Moon Views

The goal of this project is to model the number number of views for the wikipedia page "Full moon" using time-series analysis.
As you can guess the number of views peaks every month around the time of a full moon then drops to a stable lower value.


Installation

Download the data
Using wikipediatrend package in R to get data from 2008 through 2019 with daily frequency
- Rscript wiki_trend_data.R

Insall requirements
- pip install -r requirements.txt


Executive Analysis Summary
Data cleaning - Years before 2016 have zero views which were determined to be missing values
- 2014/2015 had missing values during the peak viewing times and therefore could not be ffilled so these years are removed
- Missing values where filled using forward fill (ffill)
- 2013 was then glued to 2016 in time

Modeling was performed using an LSTM in keras with:
- 4 recurrent cells

Validation down using Time-Series CV with a mean absolute scaled error
- mase ~25 once stable
- took 7 years to stabilize
