# Forecasting Public Transport Usage

I use a linear regression model and an auto arima model and compare their MAE and RMSE results from the training data. With the auto arima model producing marginally better results and the linear model possibly overfitting the arima model was trained on the full dataset and used for the final forecast. The arima model produced what looks like an accurate forecast for the period required.

**Files**
* Forecasting Public Transport.Rmd: R markdown file with the cleaning and analysis
* publicTransport_part.csv: CSV file with the data used for the analysis
