# Pewlett-Hackard-Analysis
## Analysis
### The purpose of this analysis was to look at employee data and determine, by job title, how many employees will be retiring soon as well as which employees would be eligible to participate in a mentorship program. To do this two tables were created that would hold the pertinent information. The first table looked at the start date for the employees, their title, their current employment status, and their age but in a condensed view that shows the total number of positions by the position that will soon be retiring. The second table looked at each employee and their name, birth_date, employment dates, and titles. This table had constraints on it to find just the employees who would be eligible for mentorship program participation.

## Results
### The results for the two tables can be found here [here](https://github.com/MRiczo/Pewlett-Hackard-Analysis/blob/main/Data/retiring_titles.csv) and [here](https://github.com/MRiczo/Pewlett-Hackard-Analysis/blob/main/Data/mentorship_eligibilty.csv)

### Four takeaways from the two tables are:
### - The majority of retiring employees are Senior Engineers and Senior Staff meaning that there may be lots of promotion opportunities for those younger employees in Engineer and Staff positions

### - There are only 2 managers at retirement age meaning that there won't be much change in that department and it doesn't need much attention in the upcoming retirement wave.

### - The total amount of soon-to-be-retired employees is around 86,000, which is about 28% of the employees listed on the employees.csv, meaning that a significant chunk of the Pewlett Hackard workforce will soon be gone.

### - The mentorship program has only around 1,550 eligible participants which is nowhere near the number of soon-to-be retiring employees at a ratio of about 55 retirees to one potential mentor. 

## Summary
### In conclusion, there are 86,000 employees that are soon to retire and there are only 1,550 qualified, retirement-ready employees that can participate in the mentorship program. This means that there won't be close to enough mentors for a one-to-one mentorship program. If we lower the birth year by one in the WHERE clause the number of eligible mentors jumps up to 19,904. This number allows for a ratio of only about 4 retiring employees(or jobs to fill) to one potential mentor, which is a much more manageable job for the mentors. Of this new, larger mentor pool just over 7,000 are Senior Engineers and just under 7,000 are Senior Staff meaning that the majority of the jobs needing to be filled will have mentors of appropriate background more often than not. 
 
