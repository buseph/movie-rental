CREATE TABLE [dbo].[movie] (
    [id]          UNIQUEIDENTIFIER NOT NULL,
    [title]       NVARCHAR (MAX)   NOT NULL,
    [description] NVARCHAR (MAX)   NOT NULL,
    [year]        BIGINT           NOT NULL,
    [genre]       NVARCHAR (MAX)   NOT NULL,
    [price]       FLOAT (53)       NOT NULL,
    [copies]      BIGINT           NOT NULL,
    [rented]      BIGINT           NOT NULL,
    [image]       NVARCHAR (MAX)   NOT NULL,
    [createdAt] DATETIME NULL, 
    CONSTRAINT [table1_pkey1] PRIMARY KEY CLUSTERED ([id] ASC)
);

