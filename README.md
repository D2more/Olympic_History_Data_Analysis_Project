# About Dataset

## Context

Immerse yourself in the pulse of Olympic greatness with this dataset spanning 120 years of athletic excellence. From the historic inaugural games in Athens 1896 to the exhilirating spectacle of Rio 2016, the dataset encapsulates the life stories and medal triumphs of thousands of athletes. Explore the rich tapestry of the Olympic journey, from the early pioneering years to the modern era, through comprehensive bio data and detailed medal results. Discover the narratives, trends, and transformative moments that have defined over a century of the world's most celebrated sporting event. This dataset is your key to unlocking the secrets and stories behind the medals, offering a nuanced glimpse into the evolution of the Olympic Games.


## Acknowledgement
  This dataset was downloaded from Kaggle from the user [rgriffin](https://www.kaggle.com/datasets/heesoo37/120-years-of-olympic-history-athletes-and-results/data), the user got it from [www.sports-reference.com](https://www.sports-reference.com/). It was scraped and wrangle using  R. I'm just using this real data to write some SQL queries because it makes the data easier to understand. It's like telling stories about the Olympics using numbers.
  Also, I want to say I did another project where I cleaned up some different raw and messy data using R, Excel, and SQL to make the data better so we could ask it questions too. It's like turning a jumbled-up puzzle into a picture we can all understand. 


### Data Sources
  The primary dataset used for this analysis are two csv files “athlete_events.csv“ and “noc_regions.csv“. Data (sample data) in these files would look as below:

  
### Tools
- Google BigQuery - Data Analysis
- Tableau Public - Creating Visualization Reports

### Exploratory Data Analysis
1. How many olympics games have been held?
2. List down all Olympics games held so far.
3. Mention the total no of nations who participated in each olympics game?
4. Which year saw the highest and lowest no of countries participating in olympics?
5. Which nation has participated in all of the olympic games?
6. Identify the sport which was played in all summer olympics.
7. Which Sports were just played only once in the olympics?
8. Fetch the total no of sports played in each olympic games.
9. Fetch details of the oldest athletes to win a gold medal.
10. Find the Ratio of male and female athletes participated in all olympic games.
11. Fetch the top 5 athletes who have won the most gold medals.
12. Fetch the top 5 athletes who have won the most medals (gold/silver/bronze).
13. Fetch the top 5 most successful countries in olympics. Success is defined by no of medals won.
14. List down total gold, silver and broze medals won by each country.
15. List down total gold, silver and broze medals won by each country corresponding to each olympic games.
16. Identify which country won the most gold, most silver and most bronze medals in each olympic games.
17. Identify which country won the most gold, most silver, most bronze medals and the most medals in each olympic games.
18. Which countries have never won gold medal but have won silver/bronze medals?
19. In which Sport/event, India has won highest medals.
20. Break down all olympic games where india won medal for Hockey and how many medals in each olympic games.


### Data Analysis

˜˜˜ sql
SELECT COUNT(DISTINCT games) as total_olympic_games
FROM olympics_dat.athlete_events;
˜˜˜



















 
