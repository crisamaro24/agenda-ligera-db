CREATE TABLE [App].[ServiceSchedule]
(
	[ServiceScheduleId] INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	[ServiceId] INT NOT NULL,
	[StartDate] DATETIME2 NOT NULL,
	[EndDate] DATETIME2 NOT NULL,
	[Capacity] INT NULL,
	[IsActive] BIT DEFAULT(1) NOT NULL,
	[IsDeleted] BIT DEFAULT(0) NOT NULL,
	CONSTRAINT [FK_ServiceSchedule_Service] FOREIGN KEY ([ServiceId]) REFERENCES [App].[Service]([ServiceId])
)
