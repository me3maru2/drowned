;一番最初に呼び出されるファイル

[title name="水死体"]

[stop_keyconfig]


;ティラノスクリプトが標準で用意している便利なライブラリ群
;コンフィグ、CG、回想モードを使う場合は必須
@call storage="tyrano.ks"

;ゲームで必ず必要な初期化処理はこのファイルに記述するのがオススメ

; CSS読込
[loadcss file="./data/others/user.css"]

; ティラノ側のデフォルト設定も一応合わせておく
[deffont face="MyDotFont"]
[deffont color="0xB5C7C8" size=22]
[resetfont]

; メッセージウィンドウ
[position layer=message0 x=20 y=500 width=1240 height=200 color="0x06222D"]
; スマホ画面
[position layer=message1 x=100 y=20 width=300 height=680 color="0xB5C7C8"]



[iscript]
if (sf.endFlg == undefined) {
    sf.endFlg=[0,0,0,0,0];
}
[endscript]



;メッセージボックスは非表示
@layopt layer="message" visible=false

;最初は右下のメニューボタンを非表示にする
[hidemenubutton]

;マクロファイル読み込み
[call storage="macro.ks"]
;

;タイトル画面へ移動
@jump storage="title.ks"

[s]
