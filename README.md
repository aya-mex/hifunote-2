# テーブル設計

## users テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| nickname           | string | null: false |
| email              | string | null: false |
| encrypted_password | string | null: false |

### Association

- has_many :records
- has_many :comments

## records テーブル

| Column            | Type       | Options                        |
| ----------------- | ---------- | ------------------------------ |
| onset_date        | date       | null: false                    |
| onset_time        | integer    | null: false                    |
| symptom           | integer    | null: false                    |
| bodypart          | integer    | null: false                    |
| visit_date        | date       |                                |
| hospital_name     | string     |                                |
| diagnosis         | string     |                                |
| cause             | string     |                                |
| prescription_drug | string     |                                |
| remission_date    | date       |                                |
| memo              | text       |                                |
| user              | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- has_many :comments

## comments テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| text   | string     | null: false                    |
| record | references | null: false, foreign_key: true |
| user   | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :record