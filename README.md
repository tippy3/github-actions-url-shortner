# redirect

GitHub Pagesを使って無料で短縮URLを作るサンプルです。

- ランダムな文字列ではなく任意の文字列を自分で登録するタイプです
- シェルスクリプトでURLの数だけHTMLファイルを生成しています（力技）
- リダイレクト方法はmetaタグです
- GitHub Pagesのドメインをそのまま使う場合: `https://{アカウント名}.github.io/{リポジトリ名}/{文字列}`
  - 例: https://tippy3.github.io/redirect/google → https://google.com
- 独自ドメインを使う場合: `https://{独自ドメイン}/{文字列}`

## 使い方

1. [data.csv](data.csv)にURLを追加する
2. mainブランチにpushする
3. [build.sh](build.sh)と[.github/workflows/deploy.yaml](.github/workflows/deploy.yaml)によりデプロイされる
