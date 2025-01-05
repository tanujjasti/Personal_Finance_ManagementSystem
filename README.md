# Personal_Finance_ManagementSystem
This web-based application is designed to help users effectively manage and track their personal financial transactions, bills, and overall expenses. The application allows users to input and monitor transactions, view pending bills, and calculate the current balance. It offers an easy-to-use interface and insightful financial summaries to improve personal finance management. The app is developed using a combination of **HTML**, **CSS**, **JSP** (JavaServer Pages), **JDBC**, and **SQL**, and is deployed on the **Apache Tomcat** server.

---

## Features

- **Track Personal Transactions**: Users can enter their daily transactions, specifying details such as the description, amount, category (e.g., groceries, utilities, entertainment), and date. This allows users to monitor their spending patterns.
  
- **Manage Pending Bills**: The app displays all bills that are due, including their due dates and amounts. Users can keep track of upcoming payments and ensure they don't miss any deadlines.

- **Expense Summary**: A summary page is provided where users can view their total expenses, outstanding bills, and the overall financial status. This summary helps in making informed budgeting decisions.

- **Current Balance Calculation**: The app automatically calculates the current balance by subtracting expenses and bills from the starting balance. The balance is updated in real-time as new transactions are added.

- **Responsive User Interface**: Built with **HTML** and **CSS**, the application offers a clean, responsive, and user-friendly interface that works on both desktop and mobile devices.

---

## Tech Stack

This application is built with the following technologies:

- **Frontend:**
  - **HTML**: Structure and layout of the web pages.
  - **CSS**: Styling and visual presentation of the application, ensuring a responsive design.


- **Backend:**
  - **JSP (JavaServer Pages)**: Used for dynamic page rendering, allowing user-specific data (like transactions and bills) to be displayed and updated in real-time.
  - **JDBC (Java Database Connectivity)**: Enables interaction between the Java backend and the database to store and retrieve transaction and bill data.

- **Database:**
  - **SQL (MySQL or any relational database)**: Stores users' transactions, bills, and other necessary information. It is used for data persistence.

- **Server:**
  - **Apache Tomcat**: A popular open-source application server used to deploy Java-based web applications, such as this one.

---

## Installation and Setup

### Prerequisites

Before setting up the application, ensure the following prerequisites are in place:

- **Apache Tomcat**: Ensure that Apache Tomcat is installed and running. You can download it from [here](http://tomcat.apache.org/).
- **JDK 1.8 or higher**: Java Development Kit for compiling and running the Java-based components.
- **Database Server (e.g., MySQL)**: Install and configure MySQL or any other relational database server to store transaction and bill data.
- **IDE (Integrated Development Environment)**: A Java IDE like Eclipse or IntelliJ IDEA for editing and deploying the code to Tomcat.
