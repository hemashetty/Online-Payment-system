CREATE TABLE [dbo].[Account_detail] (
    [Acc_id]        NVARCHAR (50) NOT NULL,
    [PRN_noForm_no] NUMERIC (30)  NOT NULL,
    [Stud_name]     NVARCHAR (50) NOT NULL,
    [Course]        VARCHAR (15)  NOT NULL,
    [Sem]           NUMERIC (2)   NOT NULL,
    [Mobile_no]     NUMERIC (18)  NOT NULL,
    [Email_id]      NVARCHAR (50) NOT NULL,
    [Password]      VARCHAR (50)  NOT NULL,
    PRIMARY KEY CLUSTERED ([Acc_id] ASC)
);

