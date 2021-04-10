CREATE TABLE [App].[Appointment]
(
	[AppointmentId] INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	[ServiceRecipientId] INT NOT NULL,
	[ServiceScheduleId] INT NOT NULL,
	[IsActive] BIT DEFAULT(1) NOT NULL,
	[IsDeleted] BIT DEFAULT(0) NOT NULL,
	[CreatedDate] DATETIME2 DEFAULT GETUTCDATE() NOT NULL,
	CONSTRAINT [FK_Appointment_ServiceRecipient] FOREIGN KEY ([ServiceRecipientId]) REFERENCES [App].[ServiceRecipient]([ServiceRecipientId]),
	CONSTRAINT [FK_Appointment_ServiceSchedule] FOREIGN KEY ([ServiceScheduleId]) REFERENCES [App].[ServiceSchedule]([ServiceScheduleId])
)
