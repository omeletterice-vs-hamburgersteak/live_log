# Oshilog

## 概要
ライブの記録と推し管理を行うWebアプリです。
出演者ごとの絞り込みや「推し登録」ができます。

## 使用技術
- Ruby 3.3.0
- Rails 8.0.3
- SQLite3（開発環境）
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
- ライブ登録（出演者複数選択可）
- 推し登録（カテゴリー・メモ付き）
- 出演者でのライブ絞り込み

## 開発環境構築
### 前提条件
- Docker がインストール済み
- もしくは Ruby 3.3.0 がインストール済み

### Dockerで起動（推奨）
```bash
git clone https://github.com/omeletterice-vs-hamburgersteak/live_log.git
cd live_log
docker compose build
docker compose up
```

初回のみ：
```bash
docker compose run web bin/rails db:create db:migrate
```
ブラウザで
[http://localhost:3000](http://localhost:3000)

### ローカルで直接起動する場合
```bash
git clone https://github.com/omeletterice-vs-hamburgersteak/live_log.git
cd live_log
bundle install
bin/rails db:create db:migrate
bin/rails s
```

### テスト実行方法
Docker使用時：
```bash
docker compose run web bin/rails test
```

ローカル：
```bash
bin/rails test
```

### 本番用Dockerイメージ
本番用の Dockerfile を用意しています。
```bash
bin/rails test
```