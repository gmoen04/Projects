# Dublin Bikes Forecast

I use Dublin Bikes datasets from 'https://data.gov.ie/dataset/dublinbikes-api and looked at the period from Q3 2018 to Q4 2021. The data files were merged and three stations of interest were selected for forecasting: 
* Pearse Street
* Grangegorman Lower (Central)
* City Quay

Cleaning of the dataset included the following:

* 
* 
* 

Feature engineering was done to add additional information to the dataset which might help with classification. In this case, text length and punctuation as a percentage of text were calculated and assessed as features. The former added some useful information while the latter added none as wasn't used. 

After this, data cleaning continued.
•	Data transformation for text length
•	Splitting the data into training and test sets
•	Vectorizing the tokens (TF-IDF)
•	Estimating best hyperparameters
•	Running and evaluating the random forest and gradient boosting models based on
	o	Time taken 
	o	Precision
	o	Recall
	o	Accuracy
	
After all of this was done, the results for both models were visualised in the form of classification report, a confusion matrix and an ROC curve. 
