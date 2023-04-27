CREATE TABLE [dbo].[customer] (
    [id]        UNIQUEIDENTIFIER NOT NULL,
    [firstName] NVARCHAR (MAX)   NOT NULL,
    [lastName]  NVARCHAR (MAX)   NOT NULL,
    [email]     NVARCHAR (MAX)   NOT NULL,
    [phone]     BIGINT           NOT NULL,
    [createdAt] DATETIME NULL, 
    CONSTRAINT [table1_pkey] PRIMARY KEY CLUSTERED ([id] ASC)
);

