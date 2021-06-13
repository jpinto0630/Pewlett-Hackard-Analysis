# Pewlett-Hackard-Analysis

# Project Overview 

Pewlett Hackard (PH) has requested analysis of their employee database. The intention of the analysis is to better allow PH to prepare for any future mass employee retirements. For this analysis request we were tasked with identifying the number of retiring employees by title and then identifying the number of current employees eligible to participate in mentorship programs. 

## Resources  
Software: Postgres SQL 13, pgAdmin 4, Visual Studio Code 1.57.0

## Results

### Retiring Employees by Title 
 
As we performed our analysis on the PH employee database, we found that the following:
-PH is correct in the assumption that a “Silver Wave” of retirement is likely scenario in the near future. The above snapshot is an overview of the titles held by retirement age employees (born between 01-01-1952 and 12-31-1955). 
-As we can see PH is set to experience a large exodus of senior technical staff, particularly in the engineering divisions. 

### Employees eligible for mentorship 

 
As PH prepares for the “Silver Tsunami” event one of the main initiatives is identifying technical staff eligible for mentorship advancement, as such the analysis revealed the following: 
-As stated, PH will be experiencing a large exodus of senior technical staff, fortunately as represented above there is also a large amount technical staff that is eligible to participate in mentorship programs. 
-The image above is a query of staff eligible for mentorship programs, as we can see PH has 1,549 eligible staff available to partake in mentoring the next generation of senior technical staff at PH. 

### Summary 

 
``` SELECT COUNT (emp_no) as Total_Retiring_Employees from titles_no_dupes;```

As shown in the previous figures PH will has a possible total 90,398 employees that are at retirement age. As such there is a possibility that 90,398 will need to be filled as part of the retirement wave. 

As demonstrated in the ‘Employees eligible for mentorship’ section above, there is a total of 1,549 eligible staff available for mentorships. While PH does have a sizable amount of eligible employees this number is vastly inferior to the number of possibly retiring employees, and as such is can be assumed there is not enough staff to train the next generation of senior PH employees.  









