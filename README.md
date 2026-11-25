# bank_back_office_sql_analysis
## Overview
This project analyses the requests received and processed by a unit in a bank's back office during 2023. Employee names are masked with aliases (Employee1, Employee2, ..., Employee6), and the source data is not included in this repository.

## Background
I was asked to analyse all requests the department received in 2023. The analysis requested was:

1. Total requests received, total processed and total sent back (requests with issues are returned to the creator for correction)
2. Total sent back per product
3. Month on month request overview 
4. Requests submitted by bank branches vs. those submitted by the corporate team on behalf of corporate clients
5. Requests processed per employee
6. Corporate and branch requests processed per employee
7. Turnaround time per product and per employee

## Tools
SQL Server, SSMS

## Approach
- Filtered the full request data down to the unit's six employees
- Cleaned the data (trimmed spaces, checked for duplicates and missing dates)
- Created a masked view so employee names never appear in results
- Used median vs mean for turnaround time analysis 

## Key findings
1. A total of 7569 requests were received by the unit in 2023 and out of these 98.76% (7475) were processed and 1.24% (94) were sent back 
2. Out of all requests that were sent back internal salary requests had the most send backs with 40.43%
3. December received the most requests and this was due to companies paying Christmas and 13th month bonuses
4. Total request received from the corporate team was 2593 and total received from branches were 4976
5. Employee 1 and employee 5 contributed to 49.1% of total transactions processed in 2023 out of 6 employees
| Highest sent-back rates | Complaints and investigation products (~9–10%) vs. ~1% for standard salary products |
| Corporate vs. branch | *fill in* |
| Median turnaround | *fill in* |

![Sent back by product](images/sent_back_by_product.png)

## Limitations
- Turnaround is measured in elapsed hours and includes weekends, nights and public holidays
- Requests processed before they were created were excluded from turnaround figures
- Small products (fewer than ~30 requests) have unreliable percentages
- Single department, single year

## Files
- `sql/analysis.sql`: all queries, with placeholder names
