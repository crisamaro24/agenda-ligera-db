CREATE TABLE [App].[Service]
(
	[ServiceId] INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	[EmployeeId] INT NOT NULL,
	[Title] VARCHAR(100) NOT NULL,
	[Description] VARCHAR(MAX) NULL,
	[EstimatedDurationInMinutes] INT NULL,
	[IsActive] BIT DEFAULT(1) NOT NULL,
	[IsDeleted] BIT DEFAULT(0) NOT NULL,
	CONSTRAINT [FK_Service_Employee] FOREIGN KEY ([EmployeeId]) REFERENCES [App].[Employee]([EmployeeId])
)
