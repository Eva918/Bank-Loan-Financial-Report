SELECT * FROM bank_loan_data
CREATE TABLE Customers (
    id INT PRIMARY KEY,
    member_id INT,
    address_state VARCHAR(5),
    emp_length VARCHAR(20),
    emp_title VARCHAR(100),
    home_ownership VARCHAR(50),
    annual_income INT
);
INSERT INTO Customers (id, member_id, address_state, emp_length, emp_title, home_ownership, annual_income)
SELECT id, member_id, address_state, emp_length, emp_title, home_ownership, annual_income
FROM bank_loan_data;


CREATE TABLE Loans (
    loan_id INT PRIMARY KEY,
    customer_id INT,
    loan_amount INT,
    purpose VARCHAR(50),
    grade CHAR(1),
    sub_grade VARCHAR(10),
    term VARCHAR(20),
    int_rate FLOAT,
    installment FLOAT,
    dti FLOAT,
    verification_status VARCHAR(50),
    FOREIGN KEY (customer_id) REFERENCES Customers(id)
);
INSERT INTO Loans (loan_id, customer_id, loan_amount, purpose, grade, sub_grade, term, int_rate, installment, dti, verification_status)
SELECT id, id, loan_amount, purpose, grade, sub_grade, term, int_rate, installment, dti, verification_status
FROM bank_loan_data;

CREATE TABLE Loan_Status (
    loan_status_id INT PRIMARY KEY IDENTITY(1,1),
    loan_id INT,
    loan_status VARCHAR(50),
    issue_date DATE,
    last_credit_pull_date DATE,
    last_payment_date DATE,
    next_payment_date DATE,
    total_payment FLOAT,
    FOREIGN KEY (loan_id) REFERENCES Loans(loan_id)
);
INSERT INTO Loan_Status (loan_id, loan_status, issue_date, last_credit_pull_date, last_payment_date, next_payment_date, total_payment)
SELECT DISTINCT id, loan_status, issue_date, last_credit_pull_date, last_payment_date, next_payment_date, total_payment
FROM bank_loan_data;

CREATE TABLE Customer_Accounts (
    account_id INT PRIMARY KEY IDENTITY(1,1),
    customer_id INT,
    total_acc INT,
    FOREIGN KEY (customer_id) REFERENCES Customers(id)
);

INSERT INTO Customer_Accounts (customer_id, total_acc)
SELECT DISTINCT id, total_acc
FROM bank_loan_data;

-- 1. View data from Customers table
SELECT * FROM Customers;

-- 2. View data from Loans table
SELECT * FROM Loans;

-- 3. View data from Loan_Status table
SELECT * FROM Loan_Status;

-- 4. View data from Customer_Accounts table
SELECT * FROM Customer_Accounts;
