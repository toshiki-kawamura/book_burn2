# テーブル設計

## users テーブル
| column   | Type  | Options |
|----------|-------|---------|
|email     |string |NOT NULL |
|password  |string |NOT NULL |
|name      |string |NOT NULL |
|profile   |text   |NOT NULL |
|occupation|text   |NOT NULL |
|position  |text   |NOT NULL |

### Association
- has_many : comments
- has_many : prototypes

## Commentsテーブル
| column   | Type      | Options |
|----------|-----------|---------|
|text      |text       |         |
|user      |references |         |
|prototype |references |         |

### Association
- belongs_to :users
- belongs_to :prototypes

## Prototypesテーブル
| column   | Type             | Options |
|----------|------------------|---------|
|title     |string            |NOT NULL |
|catch_copy|text              |NOT NULL |
|concept   |text              |NOT NULL |
|image     |ActiveStorageで実装|         |
|user      |references        |         |

### Association
- belongs_to :users
- has_many : comments