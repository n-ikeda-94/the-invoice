# README

# the-invoice DB設計
## usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|password|string|null: false|
### Association
- has_many :companies

## companiesテーブル
|Column|Type|Options|
|------|----|-------|
|name|text|null: false|
|postcode|text|null: false|
|address|text|null: false|
|bank|text|null: false|
|accountType|text|null: false|
|accountNumber|text|null: false|
|logo|text||
|seal|text||
|user_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :user
- has_many :templates

## templatesテーブル
|Column|Type|Options|
|------|----|-------|
|name|text|null: false|
|company_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :company
- has_many :items

## itemsテーブル
|Column|Type|Options|
|------|----|-------|
|name|text|null: false|
|positionX|integer|null: false|
|positionY|integer|null: false|
|template_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :template