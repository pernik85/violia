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

Date: 2016-11-01 23:41:20
*/


-- ----------------------------
-- Table structure for clients
-- ----------------------------
DROP TABLE IF EXISTS "public"."clients";
CREATE TABLE "public"."clients" (
"id" int4 DEFAULT nextval('auto_id_clients'::regclass) NOT NULL,
"name" varchar(255) COLLATE "default",
"last_name" varchar(255) COLLATE "default",
"patronymic" varchar(255) COLLATE "default",
"position" varchar(255) COLLATE "default",
"phone" varchar(255) COLLATE "default",
"mail" varchar(255) COLLATE "default",
"manager_id" int4 NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of clients
-- ----------------------------

-- ----------------------------
-- Alter Sequences Owned By 
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table clients
-- ----------------------------
ALTER TABLE "public"."clients" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Foreign Key structure for table "public"."clients"
-- ----------------------------
ALTER TABLE "public"."clients" ADD FOREIGN KEY ("manager_id") REFERENCES "public"."user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
