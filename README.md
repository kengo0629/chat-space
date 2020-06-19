# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

# CHAT-SPACE
[![Image from Gyazo](https://i.gyazo.com/5b6147a2362df3a70456f0e3324113cb.png)](https://gyazo.com/5b6147a2362df3a70456f0e3324113cb)

# 概要
グループ作成し・メッセージや画像の投稿が可能なコミュニケーションアプリケーション

# デモ動画
[![Image from Gyazo](https://i.gyazo.com/91f94d6f8d5cad59e1c5b9836a01ac6d.gif)](https://gyazo.com/91f94d6f8d5cad59e1c5b9836a01ac6d)
# CHAT-SPACE DB設計

## groups_usersテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :group
- belongs_to :user

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|email|string|null: false|
|password|string|null: false|

### Association
- has_many :messages
- has_many :groups_users
- has_many :groups, through: groups_users

## groupsテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|

### Association
- has_many :messages
- has_many :groups_users
- has_many :users,through: groups_users

## messagesテーブル

|Column|Type|Options|
|------|----|-------|
|body|text||
|image|string||
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :group
- belongs_to :user
