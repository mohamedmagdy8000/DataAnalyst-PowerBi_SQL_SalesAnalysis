/****** Script for SelectTopNRows command from SSMS  ******/

/****** Cleansed date table  ******/
SELECT 
  [DateKey], 
  [FullDateAlternateKey] As Date,
  --,[DayNumberOfWeek],
  [EnglishDayNameOfWeek] As Day,
  --,[SpanishDayNameOfWeek]
  --,[FrenchDayNameOfWeek]
  --,[DayNumberOfMonth]
  --,[DayNumberOfYear]
  --,[WeekNumberOfYear]
   
  [EnglishMonthName] As Month,
  LEFT([EnglishMonthName],3) As MonthShort,
  --,[SpanishMonthName]
  --,[FrenchMonthName]
  
  [MonthNumberOfYear] As MonthNo,
  [CalendarQuarter] As Quarter,
  [CalendarYear] As Year
  --,[CalendarSemester]
  --,[FiscalQuarter]
  --,[FiscalYear]
  --,[FiscalSemester]
FROM 
  [AdventureWorksDW2019].[dbo].[DimDate]
  Where CalendarYear >= 2019