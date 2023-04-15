CREATE TABLE [dbo].[rental] (
    [id]         UNIQUEIDENTIFIER NOT NULL,
    [customerId] UNIQUEIDENTIFIER NOT NULL,
    [movieId]    UNIQUEIDENTIFIER NOT NULL,
    [rentalDate] DATETIME         NOT NULL,
    [returnDate] DATETIME         NULL,
    [isReturned] BIT NOT NULL, 
    CONSTRAINT [table1_pkey2] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [rental_customer_id_fkey] FOREIGN KEY ([customerId]) REFERENCES [dbo].[customer] ([id]),
    CONSTRAINT [rental_movie_id_fkey] FOREIGN KEY ([movieId]) REFERENCES [dbo].[movie] ([id])
);

