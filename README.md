# convert_and_reverseコマンド

![test](https://github.com/kawamoto21/robosys2024/actions/workflows/test.yml/badge.svg)  

標準入力されたものを変換する  
1.大文字→小文字  
2.小文字→大文字  
3.文字列を逆転  
これら3つを同時に実行する。　　

##インストール方法
-クローンしてディレクトリを移動
~~~
$ git clone https://github.com/kawamoto21/robosys2024.git
$ cd robosys2024
~~~

-コマンドに権限を付与
~~~
$ chmod +x convert_and_reverse.py
~~~

-実行する
~~~
$ echo "Hello World" | ./convert_and_reverse
~~~

### 実行例
~~~
$ echo "Hello World" | ./convert_and_reverse

DLROw OLLEh
~~~



## 必要なソフトウェア
- Python
  - テスト済みバージョン: 3.7〜3.10

## テスト環境
- Ubuntu 22.04 LTS  

- このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます  
© 2024 Sou Kawamoto
