# リポジトリを取得

```
$ git clone git@github.com:Ushinji/ci_cd_rails.git
$ cd path/to/repo
```

## 起動手順

イメージのビルド

```
$ docker-compose build
```

bundle install

```
$ docker-compose run --rm app bundle install
```

DBマイグレーション

```
$ docker-compose run --rm app bundle exec rails db:create

$ docker-compose run --rm app bundle exec rails db:migrate
```

コンテナー起動

```
$ docker-compose up -d
```

http://localhost:3000 にアクセスして、アプリが表示されることを確認。


コンテナーの状況を確認

```
$ docker-compose ps
```

# rubocop(linter)

コードをチェック

```
$ docker-compose run --rm app bundle exec rubocop
```

自動整形

```
$ docker-compose run --rm app bundle exec rubocop -a
```

# Circle CIの設定

CircleCiのEnvironment Variablesに、以下の環境変数を設定

|変数名  |説明  |
|---|---|
|`AWS_ACCESS_KEY_ID`  |AWS_ACCESS_KEY_ID  |
|`AWS_SECRET_ACCESS_KEY`  |AWS_SECRET_ACCESS_KEY  |
|`CONTAINER_IMAGE`  |イメージプッシュ先のECRのブランチURL  |

