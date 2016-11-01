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

Date: 2016-11-01 23:42:13
*/


-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS "public"."user";
CREATE TABLE "public"."user" (
"id" int4 DEFAULT nextval('user_id_seq'::regclass) NOT NULL,
"username" varchar(32) COLLATE "default" NOT NULL,
"auth_key" varchar(32) COLLATE "default" NOT NULL,
"password_hash" varchar(255) COLLATE "default" NOT NULL,
"password_reset_token" varchar(255) COLLATE "default",
"email" varchar(255) COLLATE "default" NOT NULL,
"status" int2 DEFAULT 10 NOT NULL,
"created_at" int4 NOT NULL,
"updated_at" int4 NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO "public"."user" VALUES ('1', 'manager', 'v9tRUEGIYfWLTrui8PcrYhNZWy9zmH6k', '$2y$13$U3Hjqc/6hJacvD6JPdnfDu0dsyviRspRAy4tgc8wIV0/k7RGAnjdG', null, 'manager1@violia.ua', '10', '1476996776', '1476996776');

-- ----------------------------
-- Alter Sequences Owned By 
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table user
-- ----------------------------
ALTER TABLE "public"."user" ADD PRIMARY KEY ("id");
