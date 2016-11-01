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

Date: 2016-11-01 23:41:37
*/


-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS "public"."menu";
CREATE TABLE "public"."menu" (
"id" int4 DEFAULT nextval('menu_id_seq'::regclass) NOT NULL,
"name" varchar(128) COLLATE "default" NOT NULL,
"parent" int4,
"route" varchar(255) COLLATE "default",
"order" int4,
"data" bytea
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of menu
-- ----------------------------

-- ----------------------------
-- Alter Sequences Owned By 
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table menu
-- ----------------------------
ALTER TABLE "public"."menu" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Foreign Key structure for table "public"."menu"
-- ----------------------------
ALTER TABLE "public"."menu" ADD FOREIGN KEY ("parent") REFERENCES "public"."menu" ("id") ON DELETE SET NULL ON UPDATE CASCADE;
