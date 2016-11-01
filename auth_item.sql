/*
Navicat PGSQL Data Transfer

Source Server         : violia
Source Server Version : 90305
Source Host           : localhost:5432
Source Database       : violia
Source Schema         : public

Target Server Type    : PGSQL
Target Server Version : 90305
File Encoding         : 65001

Date: 2016-11-01 23:40:15
*/


-- ----------------------------
-- Table structure for auth_item
-- ----------------------------
DROP TABLE IF EXISTS "public"."auth_item";
CREATE TABLE "public"."auth_item" (
"name" varchar(64) COLLATE "default" NOT NULL,
"type" int4 NOT NULL,
"description" text COLLATE "default",
"rule_name" varchar(64) COLLATE "default",
"data" text COLLATE "default",
"created_at" int4,
"updated_at" int4
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of auth_item
-- ----------------------------
INSERT INTO "public"."auth_item" VALUES ('/client/*', '2', null, null, null, '1476994545', '1476994545');
INSERT INTO "public"."auth_item" VALUES ('/client/clients/*', '2', null, null, null, '1476994534', '1476994534');
INSERT INTO "public"."auth_item" VALUES ('/client/objects/*', '2', null, null, null, '1476994542', '1476994542');
INSERT INTO "public"."auth_item" VALUES ('/gii/*', '2', null, null, null, '1477491967', '1477491967');
INSERT INTO "public"."auth_item" VALUES ('manager', '2', 'правила для менеджера', null, null, '1477425417', '1477495098');

-- ----------------------------
-- Alter Sequences Owned By 
-- ----------------------------

-- ----------------------------
-- Indexes structure for table auth_item
-- ----------------------------
CREATE INDEX "idx-auth_item-type" ON "public"."auth_item" USING btree ("type");

-- ----------------------------
-- Primary Key structure for table auth_item
-- ----------------------------
ALTER TABLE "public"."auth_item" ADD PRIMARY KEY ("name");

-- ----------------------------
-- Foreign Key structure for table "public"."auth_item"
-- ----------------------------
ALTER TABLE "public"."auth_item" ADD FOREIGN KEY ("rule_name") REFERENCES "public"."auth_rule" ("name") ON DELETE SET NULL ON UPDATE CASCADE;
