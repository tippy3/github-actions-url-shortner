# redirect

GitHub Pagesで短縮URLっぽいものを作ってみた。

例: https://tippy3.github.io/redirect/google → https://google.com

あれ？ 逆に長くなってる〜！ ドメイン取得しよ。

## 使い方

1. [data.csv](data.csv)にURLを追加する
2. mainブランチにpushする
3. [build.sh](build.sh)と[.github/workflows/deploy.yaml](.github/workflows/deploy.yaml)によりデプロイされる
