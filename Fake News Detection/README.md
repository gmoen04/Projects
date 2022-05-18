# Fake News Detection

I use two datasets from Kaggle, a fake news dataset and true news dataset. I added true and fake labels to them and began the rest of the cleaning process which included the following:

•	Converting the text to lowercase, removing punctuation, numbers, and extra spaces
•	Removing stop words and additional ‘identifiers’ with regex
•	Stemming (or lemmatizing) the words
•	Vectorizing the tokens (TF-IDF)
•	Splitting the data into training and test sets
•	Estimating best hyperparameters
•	Running and evaluating the random forest and gradient boosting models based on
	o	Time taken 
	o	Precision
	o	Recall
	o	Accuracy
