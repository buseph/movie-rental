IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_name = 'customer') 
BEGIN
CREATE TABLE customer(
  id uniqueidentifier NOT NULL,
  [firstName] nvarchar(MAX) NOT NULL,
  [lastName] nvarchar(MAX) NOT NULL,
  email nvarchar(MAX) NOT NULL,
  phone bigint NOT NULL,
  CONSTRAINT table1_pkey PRIMARY KEY(id)
)
END;

IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_name = 'movie') 
BEGIN
CREATE TABLE movie(
  id uniqueidentifier NOT NULL,
  title nvarchar(MAX) NOT NULL,
  description nvarchar(MAX) NOT NULL,
  [year] bigint NOT NULL,
  genre nvarchar(MAX) NOT NULL,
  price float NOT NULL,
  copies bigint NOT NULL,
  rented bigint NOT NULL,
  image nvarchar(MAX) NOT NULL,
  CONSTRAINT table1_pkey1 PRIMARY KEY(id)
)
END;

IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_name = 'rental') 
BEGIN
CREATE TABLE rental(
  id uniqueidentifier NOT NULL,
  [customerId] uniqueidentifier NOT NULL,
  [movieId] uniqueidentifier NOT NULL,
  [rentalDate] datetime NOT NULL,
  [returnDate] datetime NOT NULL,
  CONSTRAINT table1_pkey2 PRIMARY KEY(id)
)

ALTER TABLE rental
  ADD CONSTRAINT rental_customer_id_fkey
    FOREIGN KEY ([customerId]) REFERENCES customer (id)

ALTER TABLE rental
  ADD CONSTRAINT rental_movie_id_fkey
    FOREIGN KEY ([movieId]) REFERENCES movie (id)
END;


