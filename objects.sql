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

Date: 2016-11-01 23:42:00
*/


-- ----------------------------
-- Table structure for objects
-- ----------------------------
DROP TABLE IF EXISTS "public"."objects";
CREATE TABLE "public"."objects" (
"id" int4 NOT NULL,
"client_id" int4 NOT NULL,
"name" varchar(255) COLLATE "default" NOT NULL,
"addres" varchar(255) COLLATE "default" NOT NULL,
"coord_lat" float8,
"coord_long" float8,
"monday" int4,
"tuesday" int4,
"wednesday" int4,
"thursday" int4,
"friday" int4,
"saturday" int4,
"sunday" int4,
"actie" bool DEFAULT true
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of objects
-- ----------------------------

-- ----------------------------
-- Alter Sequences Owned By 
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table objects
-- ----------------------------
ALTER TABLE "public"."objects" ADD PRIMARY KEY ("id");
