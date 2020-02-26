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
|name|string|null: false|
|email|string|null: false|
|password|string|null: false|
### Association
- has_many :coordinations
- has_many :outers
- has_many :inners
- has_many :bottoms
- has_many :hats
- has_many :shoes
- has_many :accessorys
- has_many :favorites
- has_many  :favorites,  through:  :users_favorites

## clothesテーブル
|Column|Type|Options|
|------|----|-------|
|season|string|null: false|
|coordination|string|null: false|
|user_id|integer|null: false, foreign_key: true|
|outer_id|integer|null: false, foreign_key: true|
|inner_id|integer|null: false, foreign_key: true|
|hat_id|integer|null: false, foreign_key: true|
|bottom_id|integer|null: false, foreign_key: true|
|shoes_id|integer|null: false, foreign_key: true|
|accessory_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :outer
- belongs_to :inner
- belongs_to :bottom
- belongs_to :hat
- belongs_to :shoe
- belongs_to :accessory
- has_many :favorites
- has_many  :favorites,  through:  :coordinations_favorites


## outersテーブル
|Column|Type|Options|
|------|----|-------|
|outer|string|
### Association
- has_many :coordinations
- belongs_to :user
## innersテーブル
|Column|Type|Options|
|------|----|-------|
|inner|string|
### Association
- has_many :coordinations
- belongs_to :user
## bottomsテーブル
|Column|Type|Options|
|------|----|-------|
|bottom|string|
### Association
- has_many :coordinations
- belongs_to :user
## hatsテーブル
|Column|Type|Options|
|------|----|-------|
|hat|string|
### Association
- has_many :coordinations
- belongs_to :user
## shoesテーブル
|Column|Type|Options|
|------|----|-------|
|shoe|string|
### Association
- has_many :coordinations
- belongs_to :user
## accessorysテーブル
|Column|Type|Options|
|------|----|-------|
|accessory|string|
### Association
- has_many :coordinations
- belongs_to :user
## accessory_coordinationテーブル
|Column|Type|Options|
|------|----|-------|
|accessory_id|integer|null: false, foreign_key: true|
|coordination_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :accessory
- belongs_to :coordination
## favoritesテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|coordination_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :coordination
