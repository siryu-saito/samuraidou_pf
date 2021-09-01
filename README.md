<img width="674" alt="logo" src="https://user-images.githubusercontent.com/81666082/131669193-6e4834e1-3af3-4f83-ab5b-b5171cc94619.png">

## サイト概要
戦国時代に建てられた城や城跡・古戦場跡地専用のレビューサイト

## サイトテーマ
城や古戦場巡りが好きな人や興味がある人へ  

## 主な利用シーン
- 城や古戦場巡りの写真と感想を投稿できるようにした
- 投稿に対してのコメントが可能
- Google mapで投稿した場所を表示

## 技術ポイント
- レスポンシブ対応（スマートフォン用 max-width:600px）
- Sassを使用して、レイアウトを実装
- Ajaxを用いた非同期通信（いいね機能・コメント機能）
- Google maps APIを使用して、投稿した城の場所を地図で表示
- jQueryとCSSを組み合わせたドロワーメニューを作成
- AWS VPC/EC2/RDSを用いたRails本番環境構築
- AWS Certificate Manager(ACM)でSSL証明書を発行し、HTTPS接続

## 設計書
- ER図

<img width="650" alt="スクリーンショット 2021-08-30 13 19 04" src="https://user-images.githubusercontent.com/81666082/131670067-2c63b2b8-1672-41eb-b995-f777cc9260b7.png">

- [UI Flows](https://docs.google.com/spreadsheets/d/1okkqrCvtCkX3liqhvLJ3byr0whOM4wCYug15mR9tKus/edit#gid=0)
- [テーブル定義書](https://docs.google.com/spreadsheets/d/1o_CoSptU-fAlfKpo-u5sGtS9yncgbKVh3fxoJQe8J5A/edit#gid=858220341)

## インフラ構成図

<img width="520" alt="スクリーンショット 2021-08-30 13 23 00" src="https://user-images.githubusercontent.com/81666082/131679412-532c5f96-593d-4c99-943f-b9e2b8fba1ca.png">

## 開発環境
- OS：Linux(CentOS)
- 言語：HTML,CSS,JavaScript,Ruby,SQL
- フレームワーク：Ruby on Rails
- JSライブラリ：jQuery
- IDE：Cloud9

## 使用素材
- アイコン素材：[Font Awesome](https://fontawesome.com/)
- フォント素材：[Google Fonts](https://fonts.google.com/)
- 写真素材：[O-DAN](https://o-dan.net/ja/)
