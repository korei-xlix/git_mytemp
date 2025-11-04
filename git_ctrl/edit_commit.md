# git commit編集仕様

**★当リポジトリの利用にあたっては、必ず本readmeを確認してください★**  
  

このドキュメントは、Korei's Laboにおけるcommitの書き方仕様を示すものです。  
  





## 目次 / Table of Contents

* [readme.md](../readme.md)
  * [利用にあたって (Important notices for use)](../readme.md#利用にあたっての注意事項--important-notices-for-use)

* [作業commit](#作業commit)
* [更新commit](#更新commit)
  





## 作業commit

作業commitにつけるコメント仕様です。  
作業commitはeditブランチのみに作成し、mainブランチには作成しません。  
  
```text
1行目：作業　　commitのタイトル
2行目：　　　　空白
3行目以降は作業の概要を箇条書きに書き出す

mergeコミットの場合、gitが作成したコメントはそのまま残す
```
  





## 更新commit

更新commitにつけるコメント仕様です。  
mainブランチに作成するcommitは必ず更新commitで作成し、作業commitは作成しません。
ただし、作業内容については、commit内のコメントに残すようにします。  
  
```text
1行目：更新 yyyy.mm.dd　　commitのタイトル
2行目：　　　　空白
3行目以降は作業の概要を箇条書きに書き出す

mergeコミットの場合、gitが作成したコメントはそのまま残す
```
  





***
***
[[トップへ戻る]](../readme.md)
  
::Admin= Korei (@korei-xlix)  
::github= [https://github.com/korei-xlix/](https://github.com/korei-xlix/)  
::Web= [https://website.koreis-labo.com/](https://website.koreis-labo.com/)  
::X= [https://x.com/korei_xlix](https://x.com/korei_xlix)  
***
