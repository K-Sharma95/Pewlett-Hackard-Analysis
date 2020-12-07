# Pewlett-Hackard-Analysis

## Overview
This repository contains data and anlysis(s) pertaining to Pewlett-Hackard employment. The purposes of these analysis are to determine the employment information
for individuals nearing retirement, described as the 'silver tsunami', and to determine which employees quality for a mentorship program. This raw data was collected and stored
as csv files,  and analyzed using SQL relational databases (pgadmin). Four new tables will be discussed which are located in the data folder, and the associated pgadmin query
text is located in the query folder. 

## Results
1. Mass enginerr retirement 
  - As described in the retiring_titles.csv file, engineers, assistsant engineers, and senior engineers all contain a large amount of employees on the way to retirement. 
  In order to remain prepared Pewlett-Hackard should considering hiring engineers
  
2. Prepare for mentorship in order to transition
  - As described in the mentorship_eligibility.csv file, amny employees nearing retirement qualify as mentors. These employees should be inventivized to help new hires in their same positions successfull transition, in order to minimize the transition period during the 'silver tsunami'. 
  
3. Consider other external options
  - This analysis shows a large number of potential retirees; more than Pewlett-Hackard is expecting. THey should consider using a hiring agency, or perhaps some other marketing strategy to increase the job candidate pool in order to prepare for the 'silver tsunami'. 
  
4. Consult the retirement_titles.csv
  - This csv contains very specific information for all the employees whos roles will need to be filled during the mass retirement. THis data can be used to contact these employees and perhaps create a policy which will require them to assist in the training process of any potential new hires, or compile and store details about their job to make this easier for candidates down the line. In conclusion, this csv is helpful for knowing more specific information on an individual employee level. 


## Summary 
- How many roles will need to be filled as the 'silver tsunami' begins to make an impact?


By totalling the sum of the rows in the retiring_titles.csv, 133776 roles will need to be filled in order to make an impact. 


- Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett-Hackard Employees?


In total, there are 1940 eligible, qialified and retirement-ready employees who many be able to mentor the next generation of employees. This is much fewer than the expected
retiring employess, so therefore Pewlett-Hackard should consider implementing other programs in conjuction with this mentorship program. 
