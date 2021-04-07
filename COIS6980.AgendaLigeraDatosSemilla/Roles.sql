DECLARE @AspNetRoles TABLE
(
	[Id] NVARCHAR(450) NOT NULL,
	[Name] NVARCHAR(256) NULL
)

INSERT INTO @AspNetRoles ([Id], [Name])
VALUES (NEWID(), 'Doctora'), (NEWID(), 'Secretaria'), (NEWID(), 'Paciente')
	
MERGE [dbo].[AspNetRoles] [Target] USING @AspNetRoles [Source]
ON [Target].[Name] = [Source].[Name]
	WHEN NOT MATCHED
		THEN INSERT ([Id], [Name])
				VALUES([Source].[Id], [Source].[Name])
	WHEN NOT MATCHED BY SOURCE
	    THEN DELETE;