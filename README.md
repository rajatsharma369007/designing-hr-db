# Designing an HR Database

In this project, I have designed, built, and populated a database for the Human Resources (HR) Department at the imaginary Tech ABC Corp, a video game company. This project will start with a request from the HR Manager. From there, I had to design a database using the foundational principals of data architecture that is best suited to the department's needs. This project is important, as it is a scaled-down simulation of the kind of real-world assignments data architects work on every day.

## Business Scenario
Tech ABC Corp saw explosive growth with a sudden appearance onto the gaming scene with its new AI-powered video game console. As a result, they have gone from a small 10 person operation to 200 employees and 5 locations in under a year. HR is having trouble keeping up with the growth since they are still maintaining employee information in a spreadsheet. While that worked for ten employees, it has become increasingly cumbersome to manage as the company expands.

[Link to the sample data](https://video.udacity-data.com/topher/2020/July/5f2452ca_hr-dataset/hr-dataset.xlsx)
[Link to the Proposal Document](https://github.com/rajatsharma369007/designing-hr-db/blob/main/Document/Proposal%20Document.pdf)

## Project Steps

__Step 1__: This step is all about information gathering and putting it down on paper. In this step, we are expected to complete both [business and technical proposal documents](https://github.com/rajatsharma369007/designing-hr-db/blob/main/Document/Proposal%20Document.pdf) required to begin the database design process. 

__Step 2__: This is where we walk through the design process. Here I have used Lucidchart to create [database diagrams](https://github.com/rajatsharma369007/designing-hr-db/tree/main/Database_ERD) that will be used to build an actual database.

__Step 3__: It is time to start coding. Here we use [SQL DDL commands](https://github.com/rajatsharma369007/designing-hr-db/blob/main/SQL_commands/DDL_commands.sql) to create a database. Then we populate our database with the [HR dataset](https://github.com/rajatsharma369007/designing-hr-db/blob/main/SQL_commands/DML_commands.sql). From there, we demonstrate the effectiveness of our database by completing some [SQL CRUD exercises](https://github.com/rajatsharma369007/designing-hr-db/blob/main/SQL_commands/CRUD_commands.sql).

## Project Files

#### Conceptual ERD
![alt-text](https://github.com/rajatsharma369007/designing-hr-db/blob/main/Database_ERD/Conceptual_ERD.png)

#### Logical ERD
![alt-text](https://github.com/rajatsharma369007/designing-hr-db/blob/main/Database_ERD/Logical_ERD.png)

#### Physical ERD
![alt-text](https://github.com/rajatsharma369007/designing-hr-db/blob/main/Database_ERD/Physical_ERD.png)


#### Staging Table
* [Link to the Direct Feed command](https://github.com/rajatsharma369007/designing-hr-db/blob/main/SQL_commands/direct_feed.sql)

#### Creation of Physical DB
* [Link to the DDL commands](https://github.com/rajatsharma369007/designing-hr-db/blob/main/SQL_commands/DDL_commands.sql)

#### Populating Physical DB
* [Link to the DML commands](https://github.com/rajatsharma369007/designing-hr-db/blob/main/SQL_commands/DML_commands.sql)

#### Testing of Physical DB
* [Link to the CRUD commands](https://github.com/rajatsharma369007/designing-hr-db/blob/main/SQL_commands/CRUD_commands.sql)


## License
Licensed under the [MIT License](https://github.com/rajatsharma369007/designing-hr-db/blob/main/LICENSE) @ Udacity

## Issues/Bugs
Please open issues on github to report bugs or make feature requests

## Contribution
If you are interested in improving the code, please open an issue first to describe the task you are planning to do. For small fixes (a few lines of change) feel free to open pull requests directly.
