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

Date: 2016-11-01 23:39:59
*/


-- ----------------------------
-- Table structure for auth_assignment
-- ----------------------------
DROP TABLE IF EXISTS "public"."auth_assignment";
CREATE TABLE "public"."auth_assignment" (
"item_name" varchar(64) COLLATE "default" NOT NULL,
"user_id" varchar(64) COLLATE "default" NOT NULL,
"created_at" int4
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of auth_assignment
-- ----------------------------
INSERT INTO "public"."auth_assignment" VALUES ('manager', '1', '1477471309');

-- ----------------------------
-- Alter Sequences Owned By 
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table auth_assignment
-- ----------------------------
ALTER TABLE "public"."auth_assignment" ADD PRIMARY KEY ("item_name", "user_id");

-- ----------------------------
-- Foreign Key structure for table "public"."auth_assignment"
-- ----------------------------
ALTER TABLE "public"."auth_assignment" ADD FOREIGN KEY ("item_name") REFERENCES "public"."auth_item" ("name") ON DELETE CASCADE ON UPDATE CASCADE;
