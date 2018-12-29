# リポジトリを取得

```
$ git clone git@github.com:Ushinji/ci_cd_rails.git
$ cd path/to/repo
```

# 必須環境

Docker/Docker-composeが実行できること

# 開発環境構築

起動スクリプトの実行

```
sh ./scripts/development/bootstrap.sh
```

http://localhost:3000 にアクセスして、アプリが表示されることを確認。

# テストの実行

```
$ docker-compose exec -e "RAILS_ENV=test" app bundle exec rspec .
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
|`AWS_ACCESS_KEY_ID`|AWS_ACCESS_KEY_ID|
|`AWS_SECRET_ACCESS_KEY`|AWS_SECRET_ACCESS_KEY|
|`CONTAINER_IMAGE`|イメージプッシュ先のECRのブランチURL|
|`SECRET_KEY_BASE`|Railsアプリのsecret_key_base|
|`TASK_ROLE_ARN`|ECSのTASK_ROLE_ARN|

