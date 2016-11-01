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

Date: 2016-11-01 23:41:01
*/


-- ----------------------------
-- Table structure for auth_rule
-- ----------------------------
DROP TABLE IF EXISTS "public"."auth_rule";
CREATE TABLE "public"."auth_rule" (
"name" varchar(64) COLLATE "default" NOT NULL,
"data" text COLLATE "default",
"created_at" int4,
"updated_at" int4
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of auth_rule
-- ----------------------------

-- ----------------------------
-- Alter Sequences Owned By 
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table auth_rule
-- ----------------------------
ALTER TABLE "public"."auth_rule" ADD PRIMARY KEY ("name");
