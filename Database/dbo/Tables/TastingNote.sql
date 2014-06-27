﻿CREATE TABLE [dbo].[TastingNote] (
    [TastingNoteId] INT             IDENTITY (1, 1) NOT NULL,
    [WhiskyId]      INT             NOT NULL,
    [MemberId]      INT             NOT NULL,
    [Comment]       VARCHAR (MAX)   NOT NULL,
    [Image]         VARBINARY (MAX) NULL,
    [Version]       BINARY (8)      NOT NULL,
    [InsertedDate]  DATETIME        NOT NULL,
    [UpdatedDate]   DATETIME        NOT NULL,
    CONSTRAINT [PK_TastingNote] PRIMARY KEY CLUSTERED ([TastingNoteId] ASC),
    CONSTRAINT [FK_TastingNote_Member] FOREIGN KEY ([MemberId]) REFERENCES [dbo].[Member] ([MemberId]),
    CONSTRAINT [FK_TastingNote_Whisky] FOREIGN KEY ([WhiskyId]) REFERENCES [dbo].[Whisky] ([WhiskyId])
);


GO
CREATE NONCLUSTERED INDEX [IX_FK_TastingNote_Whisky]
    ON [dbo].[TastingNote]([WhiskyId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_FK_TastingNote_Member]
    ON [dbo].[TastingNote]([MemberId] ASC);
