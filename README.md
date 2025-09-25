### ライブ参戦記録アプリ作成日記

#### 9/24
- どういうアプリにするか
- first commit
- リモートリポジトリにpushできず、充電が終わりを迎えて諦めた(深夜2時)

#### 9/25
- githubのトークンは`contents`の設定が必要だった！！！
  - `read & write`に設定する
  - `workflow`も必要だった
- LiveEventモデルの追加とDBのmigrate
  ```
  $ rails generate model LiveEvent date:date live_memo:text venue:string artist:string seat:string seat_memo:text
  $ rails db:migrate
  ```
  - 上記モデルの中身を見たいときは `rails c` から `> LiveEvent.columns.map { |c| [c.name, c.type] }`を実行
- LiveEvents controller とルーティング追加
  ```
  $ rails generate controller LiveEvents index show new edit
  ```