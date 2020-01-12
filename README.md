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



## usersテーブル
|Column|Type|Options|
|------|----|-------|
|email|string|null: false|
|password|string|null: false|
|username|string|null: false|
### Association
- has_many :clothes
- belongs_to :main

## clothesテーブル
|Column|Type|Options|
|------|----|-------|
|outer|string|null: false|
|inner|string|null: false|
|bottom|string|null: false|
|shoes|string|null: false|
|hat|string|null: false|
### Association
- belongs_to :user
- belongs_to :main


## mainsテーブル
|Column|Type|Options|
|------|----|-------|
|image|string|
|user_id|integer|null: false, foreign_key: true|
### Association
- has_many :clothes
- belongs_to :user