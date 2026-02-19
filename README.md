### ライブ参戦記録アプリ作成日記

### 起動方法
```bash
$ rails s
```


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

#### 10/2
**やったこと**
- indexのビューを作成
- index, new, create, live_event_paramsをコントローラに追加
- routeをresourcesを使うように変更
- DBにtitleを追加

**次回やりたいこと**
- indexの体裁を整える
  - 日付順とかで並び替えをしたいから表形式とかがいいのかな？
  - 背景
  - フォント
- editの追加
- newのタイトルとかの入力枠を広くしたい

#### 10/4
**やったこと**
- indexの体裁を整える
  - 表形式にし、データが日付順になった
  - 背景
- edit, update, destroyの追加

**次回やりたいこと**
- indexの体裁を整える
  - フォント
    - obsidianに使いかけのgoogle fontのコード入ってる
- newのタイトルとかの入力枠を広くしたい

#### 10/8
**やったこと**
- new,editのUI変更
- CI落ちの解決

**次回やりたいこと**
- エラーメッセージ・バリデーションの確認
  - 例えば日付が未入力でも保存できちゃうとかを防ぐ。
  - validates :title, presence: true みたいなのを live_event.rb に入れる。
- flashメッセージの導入
  - 保存・更新・削除のときに「保存しました！」とか「削除しました！」が出ると気持ちいいUIになる。
  - Tailwindで装飾できるようにすれば完璧。
- 全体のデザインをレイアウトファイルで統一
  - 例えば application.html.erb にヘッダーや背景を入れて、全ページで共通デザインを適用。

**詰まってる**
- indexの体裁を整える
  - フォント
    - obsidianに使いかけのgoogle fontのコード入ってる

#### 2/18
**やったこと**
- `routes.rb`にrootの追加
- indexの体裁修正

**次回やりたいこと**
- 時間がないのでとりあえず見た目を整える
- 後々やりたいことを上から実装していく

#### 2/20
**やったこと**
- CI落ちの修正
- コミットし忘れてた追加ボタンやindexページの体裁修正
- ソートしているカラムの色の変更
- Artistモデルを追加し、出演者の管理を変更

**やりかけていること**
- 出演者が表示されていない
- 出演者デリ彫り込みが機能してなさそう？
- newページの出演者の追加のUIが終わってる

**次回やりたいこと**
- やりかけていることをとりあえずつぶす

### 後々やりたいこと[やりたさ/難易度]
- [ ] カレンダー機能（イベント表示付き）[☆☆☆/☆☆]
- [ ] 会場の住所 → 自動で地図反映（Google Maps / OpenStreetMap）[☆☆☆/☆]
- [ ] 座席選択機能[☆☆☆☆/☆☆☆]
- [ ] 実績・バッジ機能[☆☆☆/☆☆☆]
- [ ] 出演者でフィルタ[☆☆/☆] <-やりかけ
- [ ] 推しページ作成[☆☆/☆☆] 
