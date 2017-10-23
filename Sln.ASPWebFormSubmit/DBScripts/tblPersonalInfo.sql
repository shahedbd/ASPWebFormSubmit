USE [DevTemp]
GO

/****** Object:  Table [dbo].[PersonalInfo]    Script Date: 10/23/2017 4:33:42 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[PersonalInfo](
	[PersonalInfoID] [bigint] IDENTITY(1,1) NOT NULL,
	[FirstName] [nchar](100) NULL,
	[LastName] [nchar](100) NULL,
	[DateOfBirth] [datetime] NULL,
	[City] [nchar](50) NULL,
	[Country] [nchar](100) NULL,
	[MobileNo] [nchar](50) NULL,
	[NID] [nchar](100) NULL,
	[Email] [nchar](100) NULL,
	[Status] [tinyint] NULL,
 CONSTRAINT [PK_PersonalInfo] PRIMARY KEY CLUSTERED 
(
	[PersonalInfoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


