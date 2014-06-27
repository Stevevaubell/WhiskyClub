﻿CREATE TABLE [dbo].[Member] (
    [MemberId]     INT          IDENTITY (1, 1) NOT NULL,
    [Name]         VARCHAR (50) NOT NULL,
    [Version]      BINARY (8)   NOT NULL,
    [InsertedDate] DATETIME     NOT NULL,
    [UpdatedDate]  DATETIME     NOT NULL,
    CONSTRAINT [PK_Member] PRIMARY KEY CLUSTERED ([MemberId] ASC)
);
