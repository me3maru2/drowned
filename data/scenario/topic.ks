*open_topic
; --- 画面全体を少し暗くして、スマホを際立たせる ---
[layopt layer=0 visible=true]
[image layer=0 storage="black.png" x=0 y=0 width=1280 height=720 opacity=150]

; --- スマホの筐体（外枠）を表示（レイヤー1） ---
; 画面の中央に配置
[image layer=1 storage="smartphone_frame.png" x=400 y=50 width=480 height=620]

; --- メッセージレイヤー1をスマホの画面内に設定 ---
[layopt layer=message1 visible=true]
[current layer=message1]

; 【重要】テキストの表示範囲をスマホの「画面」部分に合わせる
; （x, y, width, height は用意した画像に合わせて調整してください）
[position layer=message1 x=430 y=100 width=420 height=450 top=50 left=30 marginr=30 marginb=30]

; --- スマホ画面内のテキスト表示 ---
[font color="black" size=25] ; スマホ画面っぽいフォント設定
【記録された話題】[l][r][r]
; --- 話題の表示 ---
;day1
[if exp="f.topicFlg[0][0] == 1"] ・冷たい箱の思い出[r] [endif]
[if exp="f.topicFlg[0][1] == 1"] ・冷たい箱の思い出[r] [endif]
[if exp="f.topicFlg[0][2] == 1"] ・冷たい箱の思い出[r] [endif]
[if exp="f.topicFlg[0][3] == 1"] ・冷たい箱の思い出[r] [endif]

;day2
[if exp="f.topicFlg[1][0] == 1"] ・冷たい箱の思い出[r] [endif]
[if exp="f.topicFlg[1][1] == 1"] ・冷たい箱の思い出[r] [endif]
[if exp="f.topicFlg[1][2] == 1"] ・冷たい箱の思い出[r] [endif]
[if exp="f.topicFlg[1][3] == 1"] ・冷たい箱の思い出[r] [endif]

;day3
[if exp="f.topicFlg[2][0] == 1"] ・冷たい箱の思い出[r] [endif]
[if exp="f.topicFlg[2][1] == 1"] ・冷たい箱の思い出[r] [endif]
[if exp="f.topicFlg[2][2] == 1"] ・冷たい箱の思い出[r] [endif]
[if exp="f.topicFlg[2][3] == 1"] ・冷たい箱の思い出[r] [endif]

; --- 閉じるボタン（スマホ画面内に配置） ---
[glink text="閉じる" x=550 y=550 target="*close_topic"]
[s]

*close_topic
; --- すべてのレイヤーをクリアして戻る ---
[cm]
[freeimage layer=0]
[freeimage layer=1]
[layopt layer=message1 visible=false]
[current layer=message0]
[return]