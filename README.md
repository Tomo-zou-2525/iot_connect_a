# README


## usersテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|email|string|null: false|
|password|integer|null: false|

### Association
- has_many :tasks
- has_many :messages



## tasksテーブル

|Column|Type|Options|
|------|----|-------|
|contents|text|null: false|
|image|string|

### Association
- belongs_to :user
- belongs_to :comment
- has_many :tasks, through: :task_tags
- has_many :task_tags
- has_many :messages



## task_tagsテーブル

|Column|Type|Options|
|------|----|-------|
|task_id|integer|null: false|
|tag_id|integer|null: false|

### Association
- has_many :tasks, through: :task_tags
- has_many :task_tags
- has_many :messages



## tagsテーブル

|Column|Type|Options|
|------|----|-------|
|text|string|

### Association
- belongs_to :user
- belongs_to :comment



## commentsテーブル

|Column|Type|Options|
|------|----|-------|
|contents|text|null: false|
|image|string|

### Association
- belongs_to :user
- belongs_to :task


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
