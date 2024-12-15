The project includes various SQL queries and data analysis tasks to extract valuable insights from the athlet_events data. Some of the key queries implemented include: 
 1.How many olympics games have been held?
    select count(games) from olymbics;
 2.LIst down all olymbics games held so far?
    select distinct games,year from olymbics;
 3.Mention the total number of nations participated in each olymbics games?
    select count(distinct team) from olymbics group by games;
 4.which year saw the highest and lowest number of participating in olymbics?
    select count(Name),year from olymbics group by year;
5.which nation has participated in all olymbic games?
    select team from olymbics where team in(select distinct games from olymbics);
6.identify the sport which has played in all summer olymbics?
   select games from olymbis where season='summer';
7.which sports where just played only once in olymbics?
    select year,sportfrom olymbics order by count(sport) desc limit 1 group by year;
8.fetch the total number of sports played in each olymbic games?
   select count(sports) from olymbics group by games;
9.fetch details of oldest athlets to win a gold medal?
   select * from olymbics order by games desc limit 5;
10.find ratio of male and female athlets participated in all olymbics?
   select sex,count(name) as Total from olymbics group by sex;
11.fetch top 5 athlets who have won the most gold medals?
   select name as top 5 gold medalist from olymbics where in(select count(medal) from olymbics where medal='gold') limit 5;
12.fetch top 5 athlets who have won the most medals?
   select name as top 5 medalist from olymbics where in(select count(medals) as no.of medals from olymbics order by no.of.medals group by name)limit5;
13.fetch top 5 most successful countries in olymbics.success is defined by no of medals?
   select distinct team as top 5 countries,count(medals) from olymbics order by count(medals) desc limit 5 group by team
14.list down total gold,silver,bronze medals won by each country?
   select count(medals) from olymbics group by medals;
15.list down total gold,silver,bronze medals won by each country,corresponding to each countries?
   select distinct team,count(medals) from olymbics;
16.identify which country won the most gold medals,most silver medals,most bronze medals in each olymbics games?
   select distinct team,count(medals) from olymbics where medals='gold'order by count(medals) limit 1;
   select distinct team,count(medals) from olymbics where medals='silver'order by count(medals) limit 1;
   select distinct team,count(medals) from olymbics where medals='bronze'order by count(medals) limit 1;
17.identify which country won the most gold medals,most silver medals,most bronze medals  and most medals in each olymbics games?
   select distinct team,count(medals) from olymbics where medals='gold'order by count(medals) limit 1;
   select distinct team,count(medals) from olymbics where medals='silver'order by count(medals) limit 1;
   select distinct team,count(medals) from olymbics where medals='bronze'order by count(medals) limit 1;
   select team,count(medals) as medals from olymbics order by medals desc limit 1  group by team;
18.which countries have never won gold medal but have won silver\bronze medals?
   select distinct team from olymbics where medals is not'gold';
19.in which sport event india has won highest medals?
   select team,distinct sport,count(medals) from olymbics where team='india' order by count(medals) desc limit 1;
20.break down all olmbics games where india won medal for hockey andhow many medals in each olymbic games?
   select distinct team,sport from olymbics where team='india' and sport='hockey';
   select distinct team,count(medals) as medals from olymbics where team='india' having sport='hockey';