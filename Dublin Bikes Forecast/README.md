# Dublin Bikes Forecast

I use Dublin Bikes datasets from 'https://data.gov.ie/dataset/dublinbikes-api and looked at the period from Q3 2018 to Q4 2021. The data files were merged and three stations of interest were selected for forecasting: 
* Pearse Street
* Grangegorman Lower (Central)
* City Quay

Measuring bike usage was based on available bike stands, the best metric available. 

### Data Cleaning
Cleaning of the dataset included the following:

* Grouping bikes available by time and resampling by day
* Adding in missing values using the interpolate function
* Replacing values great than the number of bike stands available

### Data Analysis
A plot was created showing usage of the bike stands at the three stations over the entire time series. The date range of interest before the pandemic was filtered and split into training and testing segments. A seasonal auto arima model was run to find the best model for the training data and the testing segment was predicted and compared to the actual results with reasonable success given the circumstances. 

The model was then rerun on the combined training and testing time period and a best model was found again using the seasonal auto arima. This fitted model was used to predict the bike usage for the period of the pandemic. This process was repeated with each of the three stations and visualisations were created (see images folder) to visualise the predictions. 

### Result
The seasonal auto arima model did a reasonable job of predicting bike usage for the pandemic period, imagining that the pandemic hadn't happened. The range of usage in the predicted period isn't as wide in the training period with the City Quay prediction showing a best fit.

