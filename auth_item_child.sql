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

Date: 2016-11-01 23:40:28
*/


-- ----------------------------
-- Table structure for auth_item_child
-- ----------------------------
DROP TABLE IF EXISTS "public"."auth_item_child";
CREATE TABLE "public"."auth_item_child" (
"parent" varchar(64) COLLATE "default" NOT NULL,
"child" varchar(64) COLLATE "default" NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of auth_item_child
-- ----------------------------
INSERT INTO "public"."auth_item_child" VALUES ('manager', '/client/*');
INSERT INTO "public"."auth_item_child" VALUES ('manager', '/client/clients/*');
INSERT INTO "public"."auth_item_child" VALUES ('manager', '/client/objects/*');
INSERT INTO "public"."auth_item_child" VALUES ('manager', '/gii/*');

-- ----------------------------
-- Alter Sequences Owned By 
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table auth_item_child
-- ----------------------------
ALTER TABLE "public"."auth_item_child" ADD PRIMARY KEY ("parent", "child");

-- ----------------------------
-- Foreign Key structure for table "public"."auth_item_child"
-- ----------------------------
ALTER TABLE "public"."auth_item_child" ADD FOREIGN KEY ("child") REFERENCES "public"."auth_item" ("name") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."auth_item_child" ADD FOREIGN KEY ("parent") REFERENCES "public"."auth_item" ("name") ON DELETE CASCADE ON UPDATE CASCADE;
