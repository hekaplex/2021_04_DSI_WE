/*
QUESTIONS
==============

Q12. Name at least one other option for sorting a result set besides 
using a column name from the base table. 
A12. use a ordinal for the column's position e.g. ...ORDER BY 1
 
*/


/*

EXERCISE ANSWER
===================

Write a SELECT statement that returns three columns from the Vendors table: 
VendorContactFName, VendorContactLName, and VendorName. 
Sort the result set by last name, then by first name. 
*/
use AP
GO
SELECT
VendorContactFName, VendorContactLName,  VendorName
FROM Vendors
ORDER BY VendorContactLName,VendorContactFName
/*
VendorContactFName	VendorContactLName	VendorName
Thom	Aaronsen	Dristas Groom & McCormick
Joan	Aileen	Internal Revenue Service
Francesco	Alberto	US Postal Service
Alexandro	Alexis	Yale Industrial Trucks-Fresno
Zev	Alondra	Leslie Company
Nashalie	Angelica	American Booksellers Assoc
Troy	Antavius	Courier Companies, Inc
Kaitlyn	Anthoni	Pacific Gas & Electric
*/