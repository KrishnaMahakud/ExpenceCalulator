/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/
SET IDENTITY_INSERT [dbo].[Country] ON 
GO
INSERT [dbo].[Country] ([CountryId], [Name], [IsActive], [CreatedBy], [CreatedOn], [UpdateBy], [UpdatedOn]) VALUES (1, N'India', 1, NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Country] OFF
GO
SET IDENTITY_INSERT [dbo].[State] ON 
GO
INSERT [dbo].[State] ([StateId], [Name], [CountryId], [IsActive], [CreatedBy], [CreatedOn], [UpdateBy], [UpdatedOn]) VALUES (1, N'Odisha', 1, 1, NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[State] OFF
GO
SET IDENTITY_INSERT [dbo].[City] ON 
GO
INSERT [dbo].[City] ([CityId], [Name], [StateId], [IsActive], [CreatedBy], [CreatedOn], [UpdateBy], [UpdatedOn]) VALUES (1, N'Bhubaneswar', 1, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[City] ([CityId], [Name], [StateId], [IsActive], [CreatedBy], [CreatedOn], [UpdateBy], [UpdatedOn]) VALUES (2, N'Cuttack', 1, 1, NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[City] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 
GO
INSERT [dbo].[User] ([UserId], [UserName], [Password], [DOB], [Gender], [IsActive], [CreatedBy], [CreatedOn], [UpdateBy], [UpdatedOn]) VALUES (1, N'admin', N'admin', NULL, N'M', 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[User] ([UserId], [UserName], [Password], [DOB], [Gender], [IsActive], [CreatedBy], [CreatedOn], [UpdateBy], [UpdatedOn]) VALUES (2, N'user1', N'user1', NULL, N'F', 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[User] ([UserId], [UserName], [Password], [DOB], [Gender], [IsActive], [CreatedBy], [CreatedOn], [UpdateBy], [UpdatedOn]) VALUES (3, N'user2', N'user2', NULL, N'F', 1, NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[User] OFF
GO
SET IDENTITY_INSERT [dbo].[UserDetails] ON 
GO
INSERT [dbo].[UserDetails] ([UserDetailsId], [UserId], [Address1], [Address2], [CityId], [IsActive], [CreatedBy], [CreatedOn], [UpdateBy], [UpdatedOn]) VALUES (1, 1, N'ADMIN1', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[UserDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[ManagementType] ON 
GO
INSERT [dbo].[ManagementType] ([ManagementTypeId], [Name], [IsActive], [CreatedBy], [CreatedOn], [UpdateBy], [UpdatedOn]) VALUES (1, N'Savings', 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[ManagementType] ([ManagementTypeId], [Name], [IsActive], [CreatedBy], [CreatedOn], [UpdateBy], [UpdatedOn]) VALUES (2, N'Expense', 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[ManagementType] ([ManagementTypeId], [Name], [IsActive], [CreatedBy], [CreatedOn], [UpdateBy], [UpdatedOn]) VALUES (3, N'Income', 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[ManagementType] ([ManagementTypeId], [Name], [IsActive], [CreatedBy], [CreatedOn], [UpdateBy], [UpdatedOn]) VALUES (4, N'Liability', 1, NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[ManagementType] OFF
GO
SET IDENTITY_INSERT [dbo].[ManagementTypeList] ON 
GO
INSERT [dbo].[ManagementTypeList] ([ManagementTypeLIstId], [ManagementTypeId], [Name], [IsActive], [CreatedBy], [CreatedOn], [UpdateBy], [UpdatedOn]) VALUES (1, 1, N'LIC', 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[ManagementTypeList] ([ManagementTypeLIstId], [ManagementTypeId], [Name], [IsActive], [CreatedBy], [CreatedOn], [UpdateBy], [UpdatedOn]) VALUES (2, 1, N'Fixed Deposit', 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[ManagementTypeList] ([ManagementTypeLIstId], [ManagementTypeId], [Name], [IsActive], [CreatedBy], [CreatedOn], [UpdateBy], [UpdatedOn]) VALUES (3, 1, N'Recurring Deposit', 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[ManagementTypeList] ([ManagementTypeLIstId], [ManagementTypeId], [Name], [IsActive], [CreatedBy], [CreatedOn], [UpdateBy], [UpdatedOn]) VALUES (4, 2, N'Shopping', 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[ManagementTypeList] ([ManagementTypeLIstId], [ManagementTypeId], [Name], [IsActive], [CreatedBy], [CreatedOn], [UpdateBy], [UpdatedOn]) VALUES (5, 2, N'Food', 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[ManagementTypeList] ([ManagementTypeLIstId], [ManagementTypeId], [Name], [IsActive], [CreatedBy], [CreatedOn], [UpdateBy], [UpdatedOn]) VALUES (6, 2, N'Travel', 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[ManagementTypeList] ([ManagementTypeLIstId], [ManagementTypeId], [Name], [IsActive], [CreatedBy], [CreatedOn], [UpdateBy], [UpdatedOn]) VALUES (7, 3, N'Salary', 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[ManagementTypeList] ([ManagementTypeLIstId], [ManagementTypeId], [Name], [IsActive], [CreatedBy], [CreatedOn], [UpdateBy], [UpdatedOn]) VALUES (8, 3, N'Business', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[ManagementTypeList] ([ManagementTypeLIstId], [ManagementTypeId], [Name], [IsActive], [CreatedBy], [CreatedOn], [UpdateBy], [UpdatedOn]) VALUES (9, 3, N'Freelancing', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[ManagementTypeList] ([ManagementTypeLIstId], [ManagementTypeId], [Name], [IsActive], [CreatedBy], [CreatedOn], [UpdateBy], [UpdatedOn]) VALUES (10, 4, N'House Rent', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[ManagementTypeList] ([ManagementTypeLIstId], [ManagementTypeId], [Name], [IsActive], [CreatedBy], [CreatedOn], [UpdateBy], [UpdatedOn]) VALUES (11, 4, N'Personal Loan', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[ManagementTypeList] ([ManagementTypeLIstId], [ManagementTypeId], [Name], [IsActive], [CreatedBy], [CreatedOn], [UpdateBy], [UpdatedOn]) VALUES (12, 4, N'Home Loan', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[ManagementTypeList] ([ManagementTypeLIstId], [ManagementTypeId], [Name], [IsActive], [CreatedBy], [CreatedOn], [UpdateBy], [UpdatedOn]) VALUES (13, 4, N'Credit Card Loan', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[ManagementTypeList] ([ManagementTypeLIstId], [ManagementTypeId], [Name], [IsActive], [CreatedBy], [CreatedOn], [UpdateBy], [UpdatedOn]) VALUES (14, 4, N'Utility Bill', NULL, NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[ManagementTypeList] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 
GO
INSERT [dbo].[Role] ([RoleId], [RoleName], [IsActive], [CreatedBy], [CreatedOn], [UpdateBy], [UpdatedOn]) VALUES (1, N'Admin', 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Role] ([RoleId], [RoleName], [IsActive], [CreatedBy], [CreatedOn], [UpdateBy], [UpdatedOn]) VALUES (2, N'User', 1, NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[UserRole] ON 
GO
INSERT [dbo].[UserRole] ([UserRoleId], [UserId], [RoleId], [IsActive], [CreatedBy], [CreatedOn], [UpdateBy], [UpdatedOn]) VALUES (1, 1, 1, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[UserRole] ([UserRoleId], [UserId], [RoleId], [IsActive], [CreatedBy], [CreatedOn], [UpdateBy], [UpdatedOn]) VALUES (2, 2, 2, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[UserRole] ([UserRoleId], [UserId], [RoleId], [IsActive], [CreatedBy], [CreatedOn], [UpdateBy], [UpdatedOn]) VALUES (3, 3, 2, 1, NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[UserRole] OFF
GO
SET IDENTITY_INSERT [dbo].[FrequencyType] ON 
GO
INSERT [dbo].[FrequencyType] ([FrequencyTypeId], [Name], [IsActive], [CreatedBy], [CreatedOn], [UpdateBy], [UpdatedOn]) VALUES (1, N'Daily', 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[FrequencyType] ([FrequencyTypeId], [Name], [IsActive], [CreatedBy], [CreatedOn], [UpdateBy], [UpdatedOn]) VALUES (2, N'Weekly', 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[FrequencyType] ([FrequencyTypeId], [Name], [IsActive], [CreatedBy], [CreatedOn], [UpdateBy], [UpdatedOn]) VALUES (3, N'Bi-Weekly', 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[FrequencyType] ([FrequencyTypeId], [Name], [IsActive], [CreatedBy], [CreatedOn], [UpdateBy], [UpdatedOn]) VALUES (4, N'Monthly', 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[FrequencyType] ([FrequencyTypeId], [Name], [IsActive], [CreatedBy], [CreatedOn], [UpdateBy], [UpdatedOn]) VALUES (5, N'Quaterly', 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[FrequencyType] ([FrequencyTypeId], [Name], [IsActive], [CreatedBy], [CreatedOn], [UpdateBy], [UpdatedOn]) VALUES (6, N'Semi-Annual', 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[FrequencyType] ([FrequencyTypeId], [Name], [IsActive], [CreatedBy], [CreatedOn], [UpdateBy], [UpdatedOn]) VALUES (7, N'Annual', 1, NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[FrequencyType] OFF
GO