DROP TABLE review_id_table;
DROP TABLE products;
DROP TABLE customers;
DROP TABLE vines;


CREATE TABLE review_id_table (
  "review_id" TEXT PRIMARY KEY NOT NULL,
  "customer_id" TEXT,
  "product_id" TEXT,
  "product_parent" TEXT,
  "review_date" TEXT -- this should be in the formate yyyy-mm-dd
);


-- This table will contain only unique values
CREATE TABLE "products" (
  "product_id" TEXT PRIMARY KEY NOT NULL UNIQUE,
  "product_title" TEXT,
  "product_category" TEXT
);

-- Customer table for first data set
CREATE TABLE "customers" (
  "customer_id" INT PRIMARY KEY NOT NULL UNIQUE,
  "customer_count" INT
);

-- vine table
CREATE TABLE "vines" (
  "review_id" TEXT PRIMARY KEY,
  "star_rating" INTEGER,
  "helpful_votes" INTEGER,
  "total_votes" INTEGER,
  "vine" TEXT
);