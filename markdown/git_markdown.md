# git Narkdown書式

**★当リポジトリの利用にあたっては、必ず本readmeを確認してください★**  
  

このドキュメントはgithubのMarkdown書式について記載するものです。  
  





## 目次 / Table of Contents

* [readme.md](../readme.md)
  * [利用にあたって (Important notices for use)](../readme.md#利用にあたっての注意事項--important-notices-for-use)

* [gitのラベル運用](#gitのラベル運用)

* [github Markdown書式](#github-markdown書式)
  * [見出し](#見出し)
  * [Block 段落](#block-段落)
  * [Br 改行](#br-改行)
  * [Blockquotes 引用](#blockquotes-引用)
  * [Code コード](#code-コード)
  * [インラインコード](#インラインコード)
  * [pre 整形済みテキスト](#pre-整形済みテキスト)
  * [Hr 水平線](#hr-水平線)
  * [Ul 箇条書きリスト](#ul-箇条書きリスト)
  * [Ol 番号付きリスト](#ol-番号付きリスト)
  * [強調](#強調)
  * [Link リンク](#link-リンク)
  * [外部参照リンク](#外部参照リンク)
  * [Images 画像](#images-画像)
  * [Table 表](#table-表)
  





## gitのラベル運用

githubのデフォルトのラベルの意味。  
  
| Label | 説明 |
|:--|:--|
| bug           | 予期しない問題または意図しない動作を示す                |
| documentation | ドキュメンテーションに改善や追加が必要であることを示す  |
| duplicate     | 同様の Issue あるいはプルリクエストを示す               |
| enhancement   | 新しい機能のリクエストを示す                            |
| good first issue | 初回のコントリビューターに適した Issue を示す        |
| help wanted   | メンテナーが Issue もしくはプルリクエストに助けを求めていることを示す  |
| invalid       | Issue あるいはプルリクエストに関連性がなくなったことを示す    |
| question      | Issue あるいはプルリクエストにさらなる情報が必要なことを示す  |
| wontfix       | Issue あるいはプルリクエストの作業が継続されないことを示す    |
  





## github Markdown書式

### 見出し

```text
# 見出し1
## 見出し2
### 見出し3
#### 見出し4
##### 見出し5
###### 見出し6
```
  


### Block 段落

空白行を挟む  
  
段落1
  
段落2
  
```text
段落1
(空行)
段落2
```
  


### Br 改行

改行の前に半角スペース を2つ記述  
  
hoge fuga  
(↑↑↑スペース2つ↑↑↑)  
piyo
  
```text
hoge fuga  
(↑↑↑スペース2つ↑↑↑)  
piyo
```
  


### Blockquotes 引用

先頭に>を記述。ネストは>を多重に記述  
  
> 引用  
> 引用
>> 多重引用
  
```text
> 引用
> 引用
>> 多重引用
```
  


### Code コード

`バッククオート` 3つ、あるいはダッシュ~３つで囲む  
  
```text

code's

```
  


### インラインコード

`バッククオート` で単語を囲むとインラインコードになる  
  
これは`インラインコード`だ  
  
  


### pre 整形済みテキスト

半角スペース4個もしくはタブで、コードブロックをpre表示  

```text
    class Hoge
        def hoge
            print 'hoge'
        end
    end
  
    class Hoge
        def hoge
            print 'hoge'
        end
    end

```
  


### Hr 水平線

アンダースコア_ 、アスタリスク*、ハイフン-などを3つ以上連続して記述  

```text
hoge
***
hoge
___
hoge
---
  
\```
hoge
***
hoge
___
hoge
---
```
  


### Ul 箇条書きリスト

ハイフン-、プラス+、アスタリスク*のいずれかを先頭に記述  
ネストはタブで表現  

```text
* リスト1
  * リスト1_1
    * リスト1_1_1
    * リスト1_1_2
  * リスト1_2
* リスト2
* リスト3

```
  

* リスト1
  * リスト1_1
    * リスト1_1_1
    * リスト1_1_2
  * リスト1_2
* リスト2
* リスト3
  


### Ol 番号付きリスト

番号.を先頭に記述  
ネストはタブで表現  

```text
1 番号付きリスト1
  1 番号付きリスト1-1
  1 番号付きリスト1-2
1 番号付きリスト2
1 番号付きリスト3

```
  

1. 番号付きリスト1
    1. 番号付きリスト1-1
    1. 番号付きリスト1-2
1. 番号付きリスト2
1. 番号付きリスト3
  


### 強調

アスタリスク*もしくはアンダースコア_1個で文字列を囲む  
  
これは *イタリック* です  
これは \_イタリック\_ です  
  
```text
これは *イタリック* です
これは _イタリック_ です
```
  
アスタリスク*もしくはアンダースコア_2個で文字列を囲む  
  
これは **ボールド** です  
これは \_\_ボールド\_\_ です  
  
```text
これは **ボールド** です
これは __ボールド__ です
```
  

アスタリスク*もしくはアンダースコア_3個で文字列を囲む  
  
これは ***イタリック＆ボールド*** です  
これは \_\_\_イタリック＆ボールド\_\_\_ です  
  
```text
これは ***イタリック＆ボールド*** です
これは ___イタリック＆ボールド___ です
```
  


### Link リンク

[表示文字](URL)でリンクに変換  
  
[Google](https://www.google.co.jp/)
  
```text
[Google](https://www.google.co.jp/)
```
  


### 外部参照リンク

URLが長くて読みづらくなる場合や同じリンクを何度も使用する場合は、リンク先への参照を定義できる  
  
[yahoo]: http://www.yahoo.co.jp "yahoo desu"
[yahoo japan][yahoo]
  
```text
[yahoo]: http://www.yahoo.co.jp
[yahoo japan][yahoo]
```
  


### Images 画像

先頭の!で画像のと認識  
画像の大きさなどの指定をする場合はimgタグを使用  
  
```text
![alt](画像URL)
![代替文字列](URL "タイトル")
```
  


### Table 表
  
| TH1 | TH2 |  
|-----|-----|  
| TD1 | TD3 |  
| TD2 | TD4 |  
  
```text
| TH1 | TH2 |
|:--|:--| 
| TD1 | TD3 |
| TD2 | TD4 |
```
  





***
***
[[トップへ戻る]](./readme.md)  
  
::Admin= Korei (@korei-xlix)  
::github= [https://github.com/korei-xlix/](https://github.com/korei-xlix/)  
::Web= [https://website.koreis-labo.com/](https://website.koreis-labo.com/)  
::X= [https://x.com/korei_xlix](https://x.com/korei_xlix)  
***
