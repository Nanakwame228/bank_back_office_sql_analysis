# bank_back_office_sql_analysis
## Overview
This project analyses the requests received and processed by a unit in a bank's back office during 2023. Employee names are masked with aliases (Employee1, Employee2, ..., Employee6), and the source data is not included in this repository.

## Background
I was asked to analyse all requests the department received in 2023. The analysis requested was:

1. Total requests received, total processed and total sent back (requests with issues are returned to the creator for correction)
2. Requests submitted by bank branches vs. those submitted by the corporate team on behalf of corporate clients
3. Requests processed per employee
4. Corporate and branch requests processed per employee
5. Turnaround time per product and per employee

## Tools
SQL Server, SSMS

## Approach
- Filtered the full request data down to the unit's six employees
- Cleaned the data (trimmed spaces, checked for duplicates and missing dates)
- Created a masked view so employee names never appear in results
- Used median vs mean for turnaround time analysis 

## Key findings
Total requests received, total processed and total sent back : a total of 7569 requests were received by the unit in 2023 and out of these 7475 were processed and 94 were sent back 
| Sent back | ~1.2% overall |
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
