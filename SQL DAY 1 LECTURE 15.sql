-- THE CASE OF ITC AND ITS SALES --
-- CREATE A EXCEL DATASHEET CONTAINING THE COLUMN NAME DISTRIBUTION ID , NAME , CITY , REGION , PHONE NUMBER --
-- TABLE OF DISTRIBUTION --

CREATE TABLE distributors (
  distributor_id INTEGER PRIMARY KEY, --PRIMARY KEY IS ALWAYS UNIQUE--
  name TEXT NOT NULL,
  city TEXT,
  region TEXT,
  phone TEXT
  );
  
  -- DROPING THE TABLE--demo
  
  drop TABLE distributors;
  
  -- CREATE A TABLE WITH THE NAME PRODUCTS CONTAINING PRODUCT ID , PRODUCT NAME , BRAND , CATEGORY , PRICE AND STOCKdemo
  
  CREATE TABLE products (
  product_id INTEGER PRIMARY KEY, --PRIMARY KEY IS ALWAYS UNIQUE--
  product_name TEXT NOT NULL UNIQUE,
  brand TEXT,
  category TEXT NOT NULL,
  price REAL CHECK(PRICE>0),
  stock INTEGER DEFAULT 0
  );
  
  
  --CREATE A TABLE CONTAINING NAME SALES AND SHOULD HAVE COLUMNS , PRODUCT ID , DISTRIBUTOR ID , SALES DATE , QAUNTITY AND AMOUNTdemo
 CREATE TABLE sales (
  sale_id INTEGER PRIMARY KEY,
  product_id INTEGER,
  distributor_id INTEGER,
  sales_data TEXT,
  quantity INTEGER CHECK (quantity>0),
  amount REAL,
  FOREIGN KEY (product_id) REFERENCES products(product_id),
  FOREIGN KEY (distributor_id) REFERENCES distributors(distributor_id) 
  );
  
  -- checking the column --
  
  PRAGMA table_info(sales);
    PRAGMA table_info(product);
        PRAGMA table_info(product);

