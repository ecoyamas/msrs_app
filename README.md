# Ruby on Rails :ミラスタ卒業制作

## DBのリセット
```
rake db:reset
```

## seed.rbの実行
```
rake db:seed
```

## herokuへのアップロード
```
heroku login(ログイン)
git remote（リモートリポジトリにherokuがあるか確認）
rake assets:precompile RAILS_ENV=production
git push heroku master
heroku run rake db:migrate（DBに変更があったときのみ実行）
```
