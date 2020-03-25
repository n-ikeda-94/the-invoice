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
- has_many :histories

## bill_dataテーブル
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
|template|integer|null: false|
|user_id|integer|null: false, foreign_key: true|
|company_id|integer|null: false, foreign_key: true|
### Association
- has_many :outputs

## outputテーブル
|Column|Type|Options|
|------|----|-------|
|bill_data_id|text|null: false, foreign_key: true|
|template|integer|null: false|
|user_id|integer|null: false, foreign_key: true|
|company_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :bill_data