# テーブル設計

## users テーブル
| column      | Type     | Options |
|-------------|----------|---------|
|email        |string    |NOT NULL |
|password     |string    |NOT NULL |
|name         |string    |NOT NULL |
|profile      |text      |NOT NULL |
|occupation_id|integer   |NOT NULL |
|genre_id     |integer   |NOT NULL |

### Association
- has_many : comments
- has_many : books

## Commentsテーブル
| column   | Type      | Options |
|----------|-----------|---------|
|text      |text       |         |
|user      |references |         |
|book      |references |         |

### Association
- belongs_to :user
- belongs_to :book

## Booksテーブル
| column        | Type             | Options |
|---------------|------------------|---------|
|title          |string            |NOT NULL |
|select_genre_id|text              |NOT NULL |
|chapter        |text              |NOT NULL |
|image          |ActiveStorageで実装|         |
|note           |text              |         |
|user           |references        |         |

### Association
- belongs_to :user
- has_many : comments

