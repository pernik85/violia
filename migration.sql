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

Date: 2016-11-01 23:41:52
*/


-- ----------------------------
-- Table structure for migration
-- ----------------------------
DROP TABLE IF EXISTS "public"."migration";
CREATE TABLE "public"."migration" (
"version" varchar(180) COLLATE "default" NOT NULL,
"apply_time" int4
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of migration
-- ----------------------------
INSERT INTO "public"."migration" VALUES ('m000000_000000_base', '1476906409');
INSERT INTO "public"."migration" VALUES ('m140506_102106_rbac_init', '1476906593');
INSERT INTO "public"."migration" VALUES ('m140602_111327_create_menu_table', '1476906432');
INSERT INTO "public"."migration" VALUES ('m160312_050000_create_user', '1476906432');

-- ----------------------------
-- Alter Sequences Owned By 
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table migration
-- ----------------------------
ALTER TABLE "public"."migration" ADD PRIMARY KEY ("version");
