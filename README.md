# Book Burn2

## アプリケーション概要
自分の所持している本を管理するアプリです。<br>
読書のモチベーションを上げる為に、主に記録を残すことをコンセプトとしています。

## URL
https://bookburn.co.uk/

## テスト用アカウント
Email:test@test<br>
PassWord:aaaaa1

## 基本的な利用方法
※ログインしていないと機能は使えません。<br>
- 本の登録<br>
- 本の一覧表示<br>
- 本の詳細ページ<br>
- ジャンル別一覧<br>
- ユーザープロフィールページ  

## 目指した課題解決
**問題点**<br>

本を一冊読み終えるまでのモチベーションの低下に着目しました。
たくさん読みたい本はあるけれど、読み終えていない本があるから購入に躊躇っている、といった場面が度々ありました。

**解決策**<br>

１冊読み終えていなくても次の本に手を出せるように、読書の進捗の記録を残しておけるようにしました。<br>

## 洗い出した用件
|  機能           | 目的                               |    詳細                                          |
|----------------|------------------------------------|-------------------------------------------------|
| ユーザー管理機能  | 新規登録、ログイン、ログアウト機能の実装 |基本的なユーザー登録機能                              |
|本登録画面        |書籍の登録                           |本の情報を登録する機能                                |
|トップページ      |すべての書籍の一覧を表示                |登録した本の簡易情報を一覧で表示                        |
|詳細機能          |本の詳細ページ                        |登録した本の情報を閲覧できる                           |
|ジャンル検索      |ジャンル別でまとめる                    |登録した本のジャンルごとに分けられていて、一覧を取得できる  |
|ユーザープロフィール|ユーザーのプロフィールの閲覧             |ユーザー登録時に入力した情報を閲覧できる                 |

## 実装予定の機能
今後の実装としては、SNSのアカウントの連携をします。
ユーザー同士のコミュニティを深める為に、おすすめした本が評価の高い順に表示できるようにします。


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
- has_many :comments
- has_many :books

## Commentsテーブル
| column   | Type      | Options         |
|----------|-----------|-----------------|
|text      |text       |                 |
|user      |references |foreign_key: true|
|book      |references |foreign_key: true|

### Association
- belongs_to :user
- belongs_to :book

## Booksテーブル
| column        | Type             | Options         |
|---------------|------------------|-----------------|
|title          |string            |NOT NULL         |
|select_genre_id|text              |NOT NULL         |
|image          |ActiveStorageで実装|                 |
|chapter        |text              |                 |
|chapter_box    |string            |                 |
|note           |text              |                 |
|user           |references        |foreign_key: true|

### Association
- belongs_to :user
- has_many   :comments