;一番最初に呼び出されるファイル

[title name="水死体"]

[stop_keyconfig]


;ティラノスクリプトが標準で用意している便利なライブラリ群
;コンフィグ、CG、回想モードを使う場合は必須
@call storage="tyrano.ks"

;ゲームで必ず必要な初期化処理はこのファイルに記述するのがオススメ

;メッセージボックスは非表示
@layopt layer="message" visible=false

;最初は右下のメニューボタンを非表示にする
[hidemenubutton]

;タイトル画面へ移動
@jump storage="title.ks"

[s]



;end1 I know?
;end2 愛脳
;end3 愛? NO!
;end4 あいのう(もうすぐ)
;end5 Iです。

;end? しりません。
