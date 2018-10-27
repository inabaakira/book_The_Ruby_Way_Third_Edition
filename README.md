### 実行環境の作成
```
docker build -t inabaakira/ubuntu1804_the_ruby_way_third_edition .
docker run -it --name The_Ruby_Way_Third_Edition -v /Users/inaba/books/practice_book_The_Ruby_Way_Third_Edition:/books/The_Ruby_Way_Third_Edition inabaakira/ubuntu1804_the_ruby_way_third_edition /bin/bash
```

# 実行環境への接続
```
docker start The_Ruby_Way_Third_Edition
docker attach The_Ruby_Way_Third_Edition
```
