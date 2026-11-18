--The case if ITC and ITS sales--
Create a excel datasheet containing the column name , ditribution id, name, city, region,phone number.
--Table of Distributors Demo--

Create table distributors (
  Distributor_id INTEGER primary key, 
  name TEXT not NULL,
  city TEXT,
  region TEXT,
  phone TEXT
  );
  
  --Dropping the table--
  DROP TABLE distributors;
  
  --Create a table with name products containing product id, brand, category, price and stock--
  CREATE TABLE products(
    product_id integer primary key,
    product name NULL NOT NULL Unique,
    brand TEXT,
    category TEXT NOT NULL,
    price REAL CHECK (price>0),
    stock INTEGER DEFAULT 0
    );
    
    --Create a table containing name sales and should have sales id, product id, distributor id, sales date, quantity, amountdistributors
    CREATE TABLE sales(
      sales_id INTEGER PRIMARY KEY,
      product_id INTEGER,
      distributor_id INTEGER,
      sales_date TEXT,
      quantity INTEGER CHECK (quantity>0),
      amount REAL,
      FOREIGN KEY (product_id) REFERENCES products(product_id)
      FOREIGN KEY (distributor_id)REFERENCES distributors(distributors_id)
      );
  
  --Checking the column--
  PRAGMA table_info(sales);
  
  PRAGMA table_info(distributors);
  
   PRAGMA table_info(products);
