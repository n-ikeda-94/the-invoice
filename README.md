# README

# the-invoice DB設計
## companiesテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|postcode|string|null: false|
|address|string|null: false|
|bank|string|null: false|
|bank_account_type|string|null: false|
|bank_account_number|string|null: false|
|logo|text||
|seal|text||
### Association
- has_many :invoices
- has_many :departments

## invoicesテーブル
|Column|Type|Options|
|------|----|-------|
|number|integer|null: false|
|company_name|string|null: false|
|postcode|string|null: false|
|address|string|null: false|
|bank|string|null: false|
|bank_account_type|string|null: false|
|bank_account_number|string|null: false|
|logo|text||
|seal|text||
|date|string|null: false|
|client_name|string|null: false|
|client_address|string|null: false|
|amount|integer|null: false|
|payment_deadline|string|null: false|
### Association
- belongs_to :company
- has_many :statements

## statementsテーブル
|Column|Type|Options|
|------|----|-------|
|invoice_id|integer|null: false, foreign_key: true|
|number|integer|null: false|
|event_id|integer|null: false, foreign_key: true|
|text|string|null: false|
|unit_price|integer|null: false|
|quantity|integer|null: false|
|tax_rate|integer|null: false|
|sales_tax|integer|null: false|
|sub_total|integer|null: false|
### Association
- belongs_to :invoice

## departmentsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|company_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :company

## clientsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|postcode|string|null: false|
|address|string|null: false|
|company_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :company

## accountsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|attribution|integer|null: false|
### Association
- has_many :events

## eventsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|account_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :account


