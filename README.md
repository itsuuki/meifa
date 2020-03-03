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

# 個人アプリ紹介

今回は服を登録し、それらのコーディネイトを管理することを目的とするアプリを作りました。

作った理由は二つです。

* 服を大量に持っている人がどんな服を持っているか把握するため。

* 服にはある程度の組み合わせがあることが多いため、それを可視化することによって整理する。

今回のアプリで一番工夫したのは、コーディネイトを作る際に使用したfields_forです。

fields_forを使うことによってにparamsの中身に三重ハッシュができ、その中に外部キーで呼び出した服の写真たちが入ったので
coordinations_controllerに特殊な形でparamsを作ることになりました。

# 操作方法

* 新規会員登録します。

* 最初に出た画面（ホーム画面）から下の詳細を押します。

* 詳細を押して飛んだviewで空のコーディネイトを作ります。

* それと同時にouterなどに写真を追加していきます。

* 追加したらホームという文字を押し、ホームに戻ります。

* そしたら「この文字押したら切り替わるよ( ^__^ )」の文字を押しアウター一覧などにカーソルを合わせ、写真が入っていることを確認します。

* 再び「この文字押したら切り替わるよ( ^__^ )」を押し作られたコーディネイト名を押します。

* 押したら編集を押し、押した先でそのコーディネイトに写真を追加しておきます。

* これで作ったコーディネイトに写真を保存できます。

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

## coordinationsテーブル
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
|user_id|integer|null: false, foreign_key: true|
### Association
- has_many :coordinations
- belongs_to :user
## innersテーブル
|Column|Type|Options|
|------|----|-------|
|inner|string|
|user_id|integer|null: false, foreign_key: true|
### Association
- has_many :coordinations
- belongs_to :user
## bottomsテーブル
|Column|Type|Options|
|------|----|-------|
|bottom|string|
|user_id|integer|null: false, foreign_key: true|
### Association
- has_many :coordinations
- belongs_to :user
## hatsテーブル
|Column|Type|Options|
|------|----|-------|
|hat|string|
|user_id|integer|null: false, foreign_key: true|
### Association
- has_many :coordinations
- belongs_to :user
## shoesテーブル
|Column|Type|Options|
|------|----|-------|
|shoe|string|
|user_id|integer|null: false, foreign_key: true|
### Association
- has_many :coordinations
- belongs_to :user
## accessorysテーブル
|Column|Type|Options|
|------|----|-------|
|accessory|string|
|user_id|integer|null: false, foreign_key: true|
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
