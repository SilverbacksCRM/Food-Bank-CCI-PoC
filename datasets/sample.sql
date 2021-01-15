BEGIN TRANSACTION;
CREATE TABLE "Account" (
	id INTEGER NOT NULL, 
	"Name" VARCHAR(255), 
	"ParentId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Account" VALUES(1,'Aldi','');
INSERT INTO "Account" VALUES(2,'Krogers','');
CREATE TABLE "Delivery_Item__c" (
	id INTEGER NOT NULL, 
	"Food_Expiration_Date__c" VARCHAR(255), 
	"Food_Storage__c" VARCHAR(255), 
	"Delivery__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Delivery_Item__c" VALUES(1,'2021-01-22','Frozen','2');
INSERT INTO "Delivery_Item__c" VALUES(2,'2021-01-29','Non-refrigerated','2');
INSERT INTO "Delivery_Item__c" VALUES(3,'2021-01-25','Non-refrigerated','1');
INSERT INTO "Delivery_Item__c" VALUES(4,'2021-02-05','Refrigerated','1');
CREATE TABLE "Delivery__c" (
	id INTEGER NOT NULL, 
	"Scheduled_Date__c" VARCHAR(255), 
	"Status__c" VARCHAR(255), 
	"Account__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Delivery__c" VALUES(1,'2021-01-11T20:00:00.000+0000','Scheduled','2');
INSERT INTO "Delivery__c" VALUES(2,'2021-01-13T20:00:00.000+0000','Scheduled','1');
COMMIT;