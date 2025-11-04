# github コントロール

**★当リポジトリの利用にあたっては、必ず本readmeを確認してください★**  
  

このドキュメントは、githubの操作方法やコマンドを示すものです。  
なお、gitの管理は、Windows下にてgithub desktop、VS Codeとgit windowsを使用しておこなうものとします。  
  





## 目次 / Table of Contents

* [readme.md](../readme.md)
  * [利用にあたって (Important notices for use)](../readme.md#利用にあたっての注意事項--important-notices-for-use)

* [環境構築](#環境構築)
  * [gitの環境設定 (git config)](#gitの環境設定-git-config)
  * [gitの環境設定を確認する](#gitの環境設定を確認する)
  * [gitの環境設定をする](#gitの環境設定をする)
  * [SSH Keyの設定 (作業者用)](#ssh-keyの設定-作業者用)
  * [PowerShellについて](#powershellについて)
  
  * [gitアップデート](#gitアップデート)

* [基本的なgit操作](#基本的なgit操作)
  * [新規リポジトリ作成 (初回のみ/Clone使用)](#新規リポジトリ作成-初回のみclone使用)
  * [× 新規リポジトリ作成 (初回のみ/おすすめしない) ×](#-新規リポジトリ作成-初回のみおすすめしない-)
  * [作業者の確認・切替](#作業者の確認切替)
  * [リポジトリの更新（commit）](#リポジトリの更新commit)
  * [リポジトリのmerge（squash merge）](#リポジトリのmergesquash-merge)
  * [リポジトリのmerge（pull request）](#リポジトリのmergepull-request)

* [gitコマンド詳細](#gitコマンド詳細)
  * [環境設定の変更 (git config)](#gitの環境設定-git-config)
  * [ローカルリポジトリの作成 (git init)](#ローカルリポジトリ-の作成-git-init)
  * [リポジトリのクローン作成 (git clone)](#リポジトリのクローン作成-git-clone)
  * [git管理から除外](#git管理から除外-gitignore)
  * [リポジトリ/ブランチ操作](#リポジトリブランチ操作)
  * [リポジトリ/ブランチ反映 (git merge)](#リポジトリブランチ反映-git-merge)
  * [ファイル操作](#ファイル操作)
  * [コミット設定](#コミット設定)
  * [プルリクエストの作成](#プルリクエストの作成)
  





## 環境構築

VS Codeとgitのインストールをおこないます。  
  

* 1.VS Codeをダウンロードします。  
  　　[[ダウンロード](https://code.visualstudio.com/download)]  

* 2.VS Codeをセットアップします。  

* 3.VS Codeを日本語化します。  
  [左下の歯車]→[拡張機能]→上の検索窓で[Japan]を入力→[Japanese Language Pack]をインストールします。  
  
  その他おすすめ拡張機能  
  * CSS Peek
  * Live Server
  * markdownlint
  * PlantUML
  * Whitespace+
  * zenkaku

* 4.gitをインストールします。  
  VS Codeの左側のメニューからSource Controlを開きます。  
  開くとGitのダウンロードURLが表示されているので開きます。  
  インストールオプションは以下以外はデフォルトのままでよいと思います。  
  
  * 4-1. Select Compornentで以下がチェックされていることを確認します。
    * Windows Explorer Integration
    * Git LFS
    * Associate .git* configuration files with the default text editor
    * Associate .sh files to be run with bash
  
  * 4-2. Choosing the default Editorで以下にチェックされていることを確認します。
    * Use Visual Studio Code as Git's default editor
  
  * 4-3. Adjust the name... で、リポジトリ作成時に作成されるmainブランチ名を指定します。
    * Override..を選択するとよいです。
  
  * 4-4. Adjust your PATH... で、以下にチェックされていることを確認します。
    * Git from...
  
  * 4-5. Use buncle OpenSSL で、以下にチェックされていることを確認します。
    * Use bundle OpenSSL
  
  * 4-6. Use the OpenSSL libraryで、以下にチェックされていることを確認します。
    * Use the OpenSSL library
  
  * 4-7. Configuring the line...で以下にチェックします。
    * Checkput Windows-style...
  
  * 4-8. Configuring the terminal...で以下にチェックします。
    * Use MinTTY
  
  * 4-9. Choose thr default behavior...で以下にチェックします。
    * Default
  
  * 4-10. Choose a credential helperで以下にチェックします。
    * Git Credential Manager
  
  * 4-11. Configurint extra optionsで以下２つチェックします。
    * Enable file system caching
    * Enable sumbolic links
  
  * **【インストール後の初期設定は後述します。】**

* 5.VS Codeとgithubを関連づけます。  
  VS Codeの左側のメニューからAccountを選択し、githubにログインします。  

* 6.github desktopをダウンロードします。  
  　　[[ダウンロード](https://desktop.github.com/download/)]  

* 7.github desktopをセットアップします。  
  　　適当にリポジトリを読むか、新規でリポジトリを作成しておきます。  
  



### 拡張機能の設定

***MarkdownLimit***
  
Markdownエラーの除外設定をおこなう拡張機能です。  
  
　　参考記事：[こちら](https://zenn.dev/kiku09020/articles/vscode-markdown-kkp)  
  

  1. [Ctrl]+[,]で設定を開く。
  2. markdownlint と入力する。
  3. Config の [settings.jsonで編集] をクリックする。
  4. settings.json にルールコードを入力する

```text
  "markdownlint.config": {
    // 複数行の改行を許可
    "MD012": false,
  }
```
  



***WhiteSpace***
  
余計なスペースを表示する確認用です。  
  
　　参考記事：[こちら](https://qiita.com/rabi0102/items/4d22e71396c5af55abf5)  
  

  1. [Ctrl+Shift+P]でコマンドパレットを開く。
  2. Whitespace+Config のほうを開く。
  3. 以下のようにconfig.jsonを編集する。
  4. VS Codeを再起動する。

```text

3行目
  "autoStart": false,
    ↓↓↓ 変更する
  "autoStart": true,

23行目
  },   {
           ↑ここに以下を追加

    {
      "name": "full-space",
      "enabled": true,
      "pattern": "\u3000",
      "style": {
        "borderWidth": "1px",
        "borderRadius": "2px",
        "borderStyle": "solid",
        "light": {
          "backgroundColor": "rgba(200, 200, 0, 0.5)",
          "borderColor": "rgba(58, 70, 101, 0.4)"
        },
        "dark": {
          "backgroundColor": "rgba(200, 200, 0, 0.5)",
          "borderColor": "rgba(117, 141, 203, 0.4)"
        }
      }
    },
    {
      "name": "other-space",
      "enabled": true,
      "pattern": "[\u2000-\u2009]|\u200A|\u202F|\u205F",
      "style": {
        "borderWidth": "1px",
        "borderRadius": "2px",
        "borderStyle": "solid",
        "light": {
          "backgroundColor": "rgba(0, 0, 200, 0.5)",
          "borderColor": "rgba(58, 70, 101, 0.4)"
        },
        "dark": {
          "backgroundColor": "rgba(200, 0, 0, 0.5)",
          "borderColor": "rgba(117, 141, 203, 0.4)"
        }
      }
    },
```
  



### gitの環境設定 (git config)

gitの操作は、VS Codeの[ターミナル]→[新しいターミナル]からおこないます。  
  



#### gitの環境設定を確認する

```text
git config localの確認
> git config --local --list
core.repositoryformatversion=0
core.filemode=false
core.bare=false
core.logallrefupdates=true
core.symlinks=false
core.ignorecase=true

git config globalの確認
> git config --global --list
filter.lfs.smudge=git-lfs smudge -- %f
filter.lfs.process=git-lfs filter-process
filter.lfs.required=true
filter.lfs.clean=git-lfs clean -- %f
user.name=[githubアカウント名]
user.email=[メールアドレス]
color.diff=auto
color.status=auto
color.branch=auto
core.editor=code --wait
merge.tool=code --wait $MERGED
push.default=simple

git config systemの確認
> git config --system --list
diff.astextplain.textconv=astextplain
filter.lfs.clean=git-lfs clean -- %f
filter.lfs.smudge=git-lfs smudge -- %f
filter.lfs.process=git-lfs filter-process
filter.lfs.required=true
http.sslbackend=openssl
http.sslcainfo=[].crtファイルのパス]
core.autocrlf=true
core.fscache=true
core.symlinks=false
pull.rebase=false
credential.helper=manager
credential.https://dev.azure.com.usehttppath=true
init.defaultbranch=main

```
  



#### gitの環境設定をする

```text
git configを設定する。

> git config --global user.name 'username@github.com'     gitの使用者のユーザ名
> git config --global user.email 'mail@address.com'       gitの使用者のメールアドレス
> git config --global core.editor 'code --wait'           デフォルトのエディタをVS Codeにする
> git config --global merge.tool 'code --wait "$MERGED"'  デフォルトのエディタをVS Codeにする
> git config --global push.default current                puch時のブランチ名指定を簡略する（カレントブランチ名にする）

設定確認
> git config --global --list
filter.lfs.smudge=git-lfs smudge -- %f
filter.lfs.process=git-lfs filter-process
filter.lfs.required=true
filter.lfs.clean=git-lfs clean -- %f
user.name=[githubアカウント名]
user.email=[メールアドレス]
color.diff=auto
color.status=auto
color.branch=auto
core.editor=code --wait
merge.tool=code --wait $MERGED
push.default=current

```
  



#### SSH Keyの設定 (作業者用)
  
作業者として他のユーザのリモートリポジトリ上に、VS Codeからアクセスする場合、SSH Keyの設定が必要です。  
自前のリモートリポジトリや、クローンで作業する方は必要ありません。  
  
githubへアクセスするため、秘密鍵と公開鍵を生成します。  
また作成した公開鍵をgithubに設定します。  
なお公開鍵はホストごとに１個ずつでいいので、githubだけ利用するなら１個だけでいいです。  
（アカウントごとではない）  

```text
秘密鍵、公開鍵を生成する
> ssh-keygen -t rsa

Enter file in which to save the key (C:/Users/[ユーザ名]/.ssh/id_rsa): C:/Users/[ユーザ名]/.ssh/id_git_rsa
Enter passphrase (empty for no passphrase): [何も入力しない]
Enter same passphrase again: [何も入力しない]
Your identification has been saved in id_git_rsa
Your public key has been saved in id_git_rsa.pub
The key fingerprint is:
（秘密鍵の内容）

公開鍵の内容をクリップボードにコピーする
> cat C:/Users/[ユーザ名]/.ssh/id_git_rsa.pub | clip


Githubで、[Setting]->[SSH Key]->[SSH and GPG Key]->[New SSH Key]を押します。
[Title]は適当に。
[Key]にクリップボードの内容を貼りつけて、[Add SSH Key]を押します。


sshに秘密鍵のパスを教えます。
.ssh直下にconfigを作成し、秘密鍵のパスを登録します。
> cd C:/Users/[ユーザ名]/.ssh/
> ls

  configがなければ作成する
> touch config

  PowerShellの場合がこちら
> New-Item config
> code config

config内に以下を記載します。
------
Host github
  HostName github.com
  IdentityFile [公開鍵のパス .pubなし]
  User git
------

キーが開通したか確認する。
> ssh -T git@github.com
Hi [ユーザ名]! You've successfully authenticated, but GitHub does not provide shell access.

```
  



### gitアップデート

```text
Git Bashなどで以下のコマンドを実行する
> git update-git-for-windows

バージョン確認
> git version

```
  





## 基本的なgit操作

### 新規リポジトリ作成 (初回のみ/Clone使用)

こちらの手法は手間的、セキュア的におすすめします。  
  
リモートリポジトリ（github側）をcloneとして、ローカルリポジトリ（PC側）を作成します。  
  

次に、ローカル環境で、github desktopを使ってクローンを設置します。  
github desktopを起動します。  
  
```text
ローカルにクローンを設置します。  
  [File]->[New Repogitry]
  Name       ：リポジトリ名
               あるローカルフォルダをリポジトリ化する場合は、カレントのフォルダ名
  Deskription：リポジトリの説明
  Local Path ：ここの配下にローカルリポジトリが Name 名で作成される
  チェック   ：チェックを入れると、デフォルトで readme.md の枠が作成される
  Licence    ：特に指定がなければ GUN AGPLv3 を設定しておく

[Create Repogitry]を押す。

[Publish Repojitry]で、githubにリモートリポジトリを作成する。
  Name       ：github上のリポジトリ名
               ローカルと名前が違ってもよい
  Deskription：リポジトリの説明
  Keep this code...：チェックすると、privateリポジトリになる

[Publish Repojitry]を押す。


ここまでのcommitの様子
  mainブランチ  initcommit


編集用に、編集ブランチを作ることをおすすめします
> git branch edit
> git switch edit
    Switched to branch 'edit'
> git branch
    * edit
      main
> git push origin edit
    * [new branch]      edit -> edit

```
  

以後は、VS Codeのみで作業できます。  
作業する場合は、作業者の確認、切替を行います。  
  [[作業者の確認・切替](#作業者の確認切替)]  
  
  

### **★ 必要に応じて★**

リポジトリの作業者を設定する（権限設定）
github側で作成したリポジトリにて、
  [Setting]->[Access]->[Collaborators]のAdd Peopleで作業者を追加する
  



### × 新規リポジトリ作成 (初回のみ/おすすめしない) ×

こちらの手法は手間的、セキュア的におすすめしません。  
リポジトリは [[新規リポジトリ作成 (初回のみ/Clone使用)](#新規リポジトリ作成-初回のみclone使用)] の手順で作成したほうがよいです。  
  
リモートリポジトリ（github側）と、ローカルリポジトリ（パソコン側）にリポジトリを作成します。  
  
まず、githubページでリポジトリを作成します。  
  
```text
githubでリモートリポジトリを作成する
  Repository name
  Description
  Public / Private
  Choose a license  GPL3.0

作成したリポジトリで、
必要に応じてリポジトリの作業者を設定する（権限設定）
[Setting]->[Access]->[Collaborators]のAdd Peopleで作業者を追加する

```
  

次に、ローカル環境で、ローカルリポジトリを作成します。  
VS Codeのターミナルを起動します。  
  
```text
まず、リポジトリを作成するカレントディレクトリに移動します。  
> cd [カレントディレクトリのパス]

CドライブのSource\Workの場合
> cd c:/Source/Work


ローカルリポジトリを設定する
> git init
    Initialized empty Git repository

```
  

.gitignore ファイルを作成し、パターンを記述すると、gitの管理から除外できます。  
詳しくは [[git管理から除外](#git管理から除外-gitignore)] を参照ください。  
  

最後に、リモート/ローカルのリポジトリの初期設定とマージをおこないます。  
  
```text
ローカルリポジトリ以下のファイルを、ステージングエリアに追加する
> git add .
> git status
    On branch main
    No commits yet
    Changes to be committed:
      （追加されたファイル一覧が表示される）

コミットを作成する
ここでは、mainブランチに作成されます
> git commit
    エディタが開かれるので、commitのコメントを付ける。
      1行目にcommitのタイトルを記載
      2行目は空白
      3行目以降にcommitの詳細を記載
    閉じると、プロンプトに戻る。

> git status
    On branch main

ローカルリポジトリにリモートリポジトリのSSH情報を設定する
> git remote add origin '[リモートリポジトリのURL（！SSHだよ！）]'
> git remote -v
    origin  [リモートリポジトリのURL] (fetch)
    origin  [リモートリポジトリのURL] (push)

！間違えた場合！URLを修正します
> git remote set-url origin [リモートリポジトリのURL]
> git remote -v
    origin  [リモートリポジトリのURL] (fetch)
    origin  [リモートリポジトリのURL] (push)

リポジトリの最新をfetchします
ローカルリポジトリだけが更新されます
> git fetch
    ...
    * [new branch]      main       -> origin/main

ブランチの追跡情報を設定します（念のため）
> git branch --set-upstream-to=origin/[ブランチ名] [ブランチ名]

最初はmainブランチに作成されるので
> git branch --set-upstream-to=origin/main main
    branch 'main' set up to track 'origin/main'.


ローカル/リモートリポジトリをマージする
> git merge --allow-unrelated-histories origin/[ブランチ名]

最初はmainブランチに作成されるので
> git merge --allow-unrelated-histories origin/main
    Merge made by the 'ort' strategy.
    ...

コミットを生成するためコメントを書くと、マージコミットが作成されます。


★ここまでで★
リモートリポジトリは、Lisenceファイルのコミットだけ（commit1）

ローカルリポジトリには、
リモートリポジトリのLisenceファイルのコミット（commit1）
ローカルリポジトリを作成したコミット（commit2）
ローカルリポジトリのファイル群がマージされた commit3
が存在します。



リモートリポジトリにpushする
> git push origin [ブランチ名]

最初はmainブランチに作成されるので
> git push origin main
    ...
    Compressing objects: 100% (3/3), done.
    ...



★ここまでで★
リモート/ローカルそれぞれにcommit1～3が作られます。

リポジトリの状態チェック
> git status
  Your branch is up to date with 'origin/main'.
> git branch
> git log
qで抜けます

これでリポジトリの作成は完了です


編集用に、編集ブランチを作ることをおすすめします
> git branch edit
> git switch edit
    Switched to branch 'edit'
> git branch
    * edit
      main
> git push origin edit
    * [new branch]      edit -> edit

```
  



### 作業者の確認・切替

PCを複数のユーザで使用している場合、VS Codeで作業する前に作業者の確認と、
必要に応じて作業者の切替をおこなってください。  
  
```text
作業者の確認は、configでおこなう
> git config --global --list
    ...
    user.name=[githubアカウント名]
    user.email=[メールアドレス]
    ...


作業者の切替
> git config --global user.name 'username@github.com'     gitの使用者のユーザ名
> git config --global user.email 'mail@address.com'       gitの使用者のメールアドレス
切替後の確認
> git config --global --list

```
  

切替にあたっては、batファイルを作っておくと作業がラクです。  
  
下記サンプルの使い方：  
  前提：  
    d:\.gituc.bat  
  
  コマンド：  
  \.gituc　　　　　 作業者の状態表示  
  \.gituc [ユーザ]  作業者の切替  
  
```text
サンプルbat： .gituc.bat

echo off
rem ### <<< Shift-Jis >>> ##############

rem ### Start Program ##################

rem echo "### arguments ##########################"
rem echo %~dp0
rem echo %%0 = %0
rem echo %%1 = %1
rem echo %%2 = %2
rem echo %%3 = %3
rem echo "########################################"

rem echo "hello world !"
rem git status

if "%1"=="user1" (
  git config --global user.name user1@githubxxx.com
  git config --global user.email user1@mailxxx.com
rem git config --global --list
  echo ### user.name ########
  git config --global user.name
  echo ### user.email #######
  git config --global user.email
  echo "git user changed <%1>

) else if "%1"=="user2" (
  git config --global user.name user2@githubxxx.com
  git config --global user.email user2@mailxxx.com
rem git config --global --list
  echo ### user.name ########
  git config --global user.name
  echo ### user.email #######
  git config --global user.email
  echo "git user changed <%1>

) else (
rem git config --global --list
  echo ### user.name ########
  git config --global user.name
  echo ### user.email #######
  git config --global user.email
)

rem ### End Program ####################
pause
exit /b

```
  



### リポジトリの更新（commit）

サブブランチでの基本的なリポジトリの更新です。  
  

```text
サブ前提
> git switch sub
> git branch

まずリモートリポジトリとの同期するため、リモートリポジトリをfenchする
> git fetch
    リモートリポジトリに更新があると、ローカルリポジトリにダウンロードする
    remote: Enumerating objects: 4, done.
    ...

更新があった場合、マージする
デフォルトはファストフォワード扱いとなり、マージコミットは作られない
> git merge origin/sub
    Fast-forward
    （更新されたファイル一覧）


コミットを作成する
> git add .
> git status
> git commit

リモートリポジトリのsubブランチにpushする
> git push origin sub

```
  



### リポジトリのmerge（squash merge）

スカッシュとは、merge時、過去commitを1つにまとめる、mergeオプションです。  
作業用commitなどを残したくない場合にcommitがひとつにまとまるため便利です。  
しかし、作業用commitが残らないため、マージコミットに記録しないと更新内容が残らないこと、多用することでコンフリクトが発生しやすくなるといったデメリットもあります。少なくとも、mainブランチへの実施は避けたほうがいいと思います。運用には注意しましょう。  
  
ここでは説明のため、mainブランチとsubブランチを使用する説明とします。  
  
```text
前提：
  mainブランチ  initcommit、commit1、commit2
  subブランチ   initcommit、commit1、commit2、commitA、commit3

メインブランチに切り替える
> git switch main
> git branch

まずリモートリポジトリとの同期するため、リモートリポジトリをfenchする
> git fetch

更新があった場合、マージする
デフォルトはファストフォワード扱いとなり、マージコミットは作られない
> git merge origin/main


subブランチとmergeする
> git merge --squash sub
    Fast-forward
    （更新されたファイル一覧）

マージコミットは別で作る
> git commit

リモートリポジトリのmainブランチにpushする
> git push origin main


ここまでのcommitの様子
  mainブランチ  initcommit、commit1、commit2、commit4
  subブランチ   initcommit、commit1、commit2、commitA、commit3
    commit4にはcommitA、commit3が含まれる

```
  



### リポジトリのmerge（pull request）

pull requestを使ったリポジトリの更新です。  
ブランチへのmergeをpull requestを通じて、github上で行えます。  
  

```text
前提：
  subブランチにcommit5を追加し、subブランチはpushしておく
  
  mainブランチ  initcommit、commit1、commit2、commit4
  subブランチ   initcommit、commit1、commit2、commitA、commit3、commit5
    commit4にはcommitA、commit3が含まれる

  つまり、commit5をpull requestでmainブランチに更新するイメージ


githubでpull requestを発行する。
[New Pull Request]を押す。
  ベースブランチ　：main
  コンペアブランチ：sub

[Create Pull Request]を押す。
  レビューア：ドキュメントをレビューする人
              Pull Requestの発行者がレビューイ、レビューされる人
  タイトル  ：リクエストのタイトル
  詳細      ：レビューしてほしい範囲、内容、ポイントなど

[Create Pull Request]→[Confirm merge]を押すと、github側でマージコミットが作成される。
  注意：
    レビューアからコメントがつくと、レビューイ側で[Merge Pull Request]が押せる。
    マージする人はレビューアでもできるが、通常はレビューイがマージを行う。
    マージする人はプロジェクトの運用方針により異なるので、プロジェクトの方針に従おう。


メインブランチ前提
> git switch main
    Your branch is up to date with 'origin/main'.
> git branch
      edit
    * main

リモートリポジトリをfench、mergeする
デフォルトはファストフォワード扱いとなり、マージコミットは作られない
> git fetch
> git merge origin/main


サブブランチに切り替える
> git switch sub
> git branch

マージする
デフォルトはファストフォワード扱いとなり、マージコミットは作られない
> git merge main

リモートリポジトリのsubブランチにpushする
> git push origin sub


ここまでのcommitの様子
  mainブランチ  initcommit、commit1、commit2、commit4、commit5、pullreqcommit
  subブランチ   initcommit、commit1、commit2、commitA、commit3、commit5、pullreqcommit
    commit4にはcommitA、commit3が含まれる
    pullreqcommitは、pull requestによるマージコミット

```
  





## gitコマンド詳細

### 環境設定の変更 (git config)

```text
git config globalの確認
> git config --global --list

git config systemの確認
> git config --system --list

git config local（ローカルリポジトリ）の確認
> git config --local --list

gitの使用者の変更
> git config --global user.name 'username@github.com'     gitの使用者のユーザ名
> git config --global user.email 'mail@address.com'       gitの使用者のメールアドレス

```
  



### ローカルリポジトリ の作成 (git init)

```text
ローカルリポジトリの新規作成
> git init

```
  



### リポジトリのクローン作成 (git clone)

```text
カレントにローカルリポジトリを設置します
> git clone '[リポジトリのURL]' .   

サブディレクトリ以下に設置する場合
> git clone '[リポジトリのURL]' subdirectory/

```
  



### git管理から除外 (.gitignore)
  
リポジトリのカレントに .gitignore を置くことで、
指定のファイル、フォルダをgitリポジトリ管理から除外することができます。  
  

```text
.gitignoreファイルを作成する（PowerShell）
> New-Item .gitignore
> code .gitignore

.gitignore内に以下を記載します。
------
subdirectory/file.md  # ファイル直接指定
subdirectory/         # フォルダ指定
*.old                 # ワイルドカード指定
#   コメントアウト
------

```
  



### リポジトリ/ブランチ操作

```text
ワークエリア、ステージングエリアの状態を表示する
> git status

ブランチの一覧を取得する
> git branch
    * main
      sub1
      sub2
  * が現在操作中のブランチ


ブランチを作成する
> git branch [ブランチ名]

sub3ブランチを作成する場合
> git branch sub3
    * main
      sub1
      sub2
      sub3

操作するブランチを切り替える
> git switch [ブランチ名]

sub3に切り替える場合
> git switch sub3
> git branch
      main
      sub1
      sub2
    * sub3


ブランチを消す
> git branch -d [ブランチ名]


設定中のリモートリポジトリのURLを表示する
> git remote -v

リモートリポジトリからローカルリポジトリへ取り込み
> git fetch
    ローカルリポジトリへのみ反映される
    ワークエリアへは反映されない

```
  



### リポジトリ/ブランチ反映 (git merge)

```text
ワークエリアとリポジトリをマージする
> git merge [リポジトリ名]

mainにリモートリポジトリのsubをマージする
> git switch main
> git merge sub

mainにローカルリポジトリのsubをマージする
> git switch main
> git merge origin/sub

mainにリポジトリのsubをスカッシュマージする
> git switch main
> git merge --squash origin/sub
    スカッシュ分のマージコミットは必ず git commit で作成する必要がある


ローカルリポジトリのmainブランチを、リモートリポジトリにpushする
> git push origin main

```
  



### ファイル操作

ワークエリアからステージングエリアへのファイルの追加をおこないます。  
  
```text
指定ファイルの追加
> git add [ファイル1] [ファイル2]

カレント以下全て追加
> git add .

カレント以下で追加、削除、更新されたファイルのみ追加
> git add -A

更新、削除されたファイルが対象
> git add -u

新規追加、更新されたファイルが対象
> git add --no-all

```
  



### コミット設定

```text
コミットを作成する
> git commit
    エディタが開かれるので、commitのコメントを付ける。
      1行目にcommitのタイトルを記載
      2行目は空白
      3行目以降にcommitの詳細を記載
    閉じると、プロンプトに戻る。

```
  



### プルリクエストの作成

githubでpull requestを発行します。  
コンペアブランチの更新を、pull requestに従ってレビューをおこない
mergeの正当性を確認したあとgithub上でサブブランチの内容をベースブランチへmerge操作（merge→commit）をおこなうものです。  
  
```text
github上での操作：

[New Pull Request]を押す。
  ベースブランチ　：main
  コンペアブランチ：sub

[Create Pull Request]を押す。
  レビューア：ドキュメントをレビューする人
              Pull Requestの発行者がレビューイ、レビューされる人
  タイトル  ：リクエストのタイトル
  詳細      ：レビューしてほしい範囲、内容、ポイントなど

[Create Pull Request]→[Confirm merge]を押すと、github側でマージコミットが作成される。
  注意：
    レビューアからコメントがつくと、レビューイ側で[Merge Pull Request]が押せる。
    マージする人はレビューアでもできるが、通常はレビューイがマージを行う。
    マージする人はプロジェクトの運用方針により異なるので、プロジェクトの方針に従おう。


サブブランチの操作：

メインブランチ前提
> git switch main
    Your branch is up to date with 'origin/main'.
> git branch
      edit
    * main

リモートリポジトリをfench、mergeする
デフォルトはファストフォワード扱いとなり、マージコミットは作られない
> git fetch
> git merge origin/main


サブブランチに切り替える
> git switch sub
> git branch

マージする
デフォルトはファストフォワード扱いとなり、マージコミットは作られない
（スカッシュでもいいかもしんまい）
> git merge main

リモートリポジトリのsubブランチにpushする
> git push origin sub

```
  





## PowerShellについて

```text
Windows 10の場合で
Error connecting to agent: No such file or directory の場合、
SSH-Agentサービスを動かす必要がある。

PowerShellを管理者モードで起動し、以下を実施する（VS Codeだとユーザモードになるので注意）
> Get-Service ssh-agent
  Stopped  ssh-agent

> Set-Service -Name ssh-agent -StartupType Automatic
> Start-Service ssh-agent
> Get-Service ssh-agent
  Running  ssh-agent

SSH-Agentの確認
> ssh-add -l
  The agent has no identities.

SSH-Agentにパスフレーズを登録する
> ssh-add [秘密鍵のパス .pubなし]
Enter passphrase for: [パスフレーズ入力]
Identity added
> ssh-add -l
  The agent has no identities.
  (秘密鍵のフィンガープリントが表示される)

```
  





***
***
[[トップへ戻る]](../readme.md)  
  
::Admin= Korei (@korei-xlix)  
::github= [https://github.com/korei-xlix/](https://github.com/korei-xlix/)  
::Web= [https://website.koreis-labo.com/](https://website.koreis-labo.com/)  
::X= [https://x.com/korei_xlix](https://x.com/korei_xlix)  
***
