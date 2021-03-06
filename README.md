# アプリケーション名

HifuNote

# アプリケーション概要

皮膚症状を写真付きで記録して管理することで、病院を受診した際に症状を説明しやすくなる。また他のユーザーの記録から似たような症状を見つけ、病名や治療法などを参考にすることができる。

# URL

https://hifunote-2.herokuapp.com/

# Basic認証

- Basic認証パスワード：2222
- Basic認証ID：admin

# テスト用アカウント

### アカウント①

- メールアドレス：test1@test.com
- パスワード：test1111

### アカウント②

- メールアドレス：test2@test.com
- パスワード：test2222

# 利用方法

### 症状記録

1. トップページ（一覧ページ）のヘッダーからユーザー新規登録（テスト用アカウントでログイン）を行う。
2. 「記録する」ボタンから、症状の内容（画像1枚・発症日時・発症部位・症状は必須）を入力し投稿する。

### コメント

- ログイン後、記録の詳細ページからコメントが投稿（削除）できる。

### 保存

- ログイン後、記録の詳細ページから、他ユーザーが記録した症状を保存すると、自身のマイページからいつでも閲覧できる。

# アプリケーションを作成した背景

以前、広告代理店で営業をしていた時に、クライアントである製薬メーカーに、じんましんの症状を記録するアプリを提案したことがある。じんましんは数十分から数時間で症状が治まることが一般的であり、病院を受診する時には症状が出ていないことが多いため、写真と一緒に症状を記録できるアプリを提案したが、予算の都合で失注となった。  
また私自身や家族も、皮膚症状が出た際に画像検索をして似たような症状から病名や治療法を参考にすることがよくある。そのため、もしこれが一つのアプリケーションにまとまっていたら、検索も容易になり、また一般ユーザーが手軽に投稿できるため、より参考となる症例写真や情報を集められると思い、皮膚症状全般を対象とした記録共有アプリケーションを開発することにした。

# 洗い出した要件

[要件を定義したシート](https://docs.google.com/spreadsheets/d/1w39-ExN6O87TqjAwrWGsd9DE_iXSuVu4NbjH8olPPMo/edit#gid=982722306)

# 実装予定の機能

- 発症部位、症状ごとの一覧表示機能

# データベース設計

[![Image from Gyazo](https://i.gyazo.com/9413929f146e93cbd98af4ced0b1181b.png)](https://gyazo.com/9413929f146e93cbd98af4ced0b1181b)

# 画面遷移図

[![Image from Gyazo](https://i.gyazo.com/5d4cd9054635f469112b8538b54bc0e7.png)](https://gyazo.com/5d4cd9054635f469112b8538b54bc0e7)

# 開発環境

- フロントエンド：HTML, CSS
- バックエンド：Ruby, Ruby on Rails
- インフラ：MySQL
- テスト：Rspec
- テキストエディタ：Visual Studio Code
- タスク管理：GitHub

# ローカルでの動作方法

以下のコマンドを順に実行  
% git clone https://github.com/aya-mex/hifunote-2.git  
% cd hifunote-2  
% bundle install  
% yarn install

# 工夫したポイント

- 病院名についてはあくまで個人の記録用とするため、投稿ユーザー以外には表示しないようにした。
- 他のユーザーの投稿を「保存」することで、参考にしたい記録をマイページからいつでも閲覧できるようにした。



