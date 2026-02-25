# アプリ名

## 概要
ライブ記録管理アプリ

## 使用技術
- Ruby on Rails
- PostgreSQL
- Tailwind CSS

## ER図
![sequence](docs/live_log_er.png)

## シーケンス図
- ライブ作成の流れ
![sequence](docs/live_log_live_resitration_sequence.png)

- 推し登録の流れ
![sequence](docs/live_log_favorite_resistration_sequence.png)

- 推しと出演者の紐づけ
![sequence](docs/live_log_favorite_artist_sequence.png)

## 機能一覧
- ライブ登録
- 出演者登録
- 出演者で絞り込み

## 環境構築
```bash
git clone
bundle install
rails db:create db:migrate
rails s
```