CREATE TABLE [App].[ServiceRecipient]
(
	[ServiceRecipientId] INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	[UserId] NVARCHAR(450) NOT NULL,
	[FirstName] VARCHAR(100) NOT NULL,
	[LastName] VARCHAR(200) NULL,
	[IsActive] BIT DEFAULT(1) NOT NULL,
	[IsDeleted] BIT DEFAULT(0) NOT NULL,
	CONSTRAINT [FK_ServiceRecipient_AspNetUsers] FOREIGN KEY ([UserId]) REFERENCES [dbo].[AspNetUsers]([Id])
)
