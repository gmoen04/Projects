# Unordered Multinomial Logit

The data come from Alvarez, Cheibub, Limongi, and Przeworski (1996) and is labelled gdpChange.csv. The dataset covers 135 countries observed between 1950 or the year of independence or the ﬁrst year forwhich data on economic growth are available (”entry year”), and 1990 or the last year for which data on economic growth are available (”exit year”). The unit of analysis is a particular country during a particular year, for a total > 3,500 observations.

* Response variable:
	* GDPWdiff: Diﬀerence in GDP between year t and t−1. Possible categories include:
		”positive”, ”negative”, or ”no change”

* Explanatory variables:
	* REG: 1=Democracy; 0=Non-Democracy
	* OIL: 1=if the average ratio of fuel exports to total exports in 1984-86 exceeded 50%; 0= otherwise

I constructed and interpreted an unordered multinomial logit with GDPWdiff as the output and ”no change” as the reference category, including the estimated cutoﬀ points and coeﬃcients.
