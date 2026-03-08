
*start

[cm  ]
[clearfix]
[start_keyconfig]


[bg storage="01.png" time="100"]

;メッセージウィンドウの設定
[position layer="message0" left=0 top=520 width=1280 height=200 page=fore visible=true]
[config_record_label skip="false"]
;文字が表示される領域を調整
[position layer=message0 page=fore margint="45" marginl="50" marginr="70" marginb="60"]


;メッセージウィンドウの表示
@layopt layer=message0 visible=true

;キャラクターの名前が表示される文字領域
[ptext name="chara_name_area" layer="message0" color="0xB5C7C8" size=28 bold=true x=80 y=530]

;上記で定義した領域がキャラクターの名前表示であることを宣言
[chara_config ptext="chara_name_area"]

;このゲームで登場するキャラクターを宣言

本作品には、r15程度のグロゴア表現、死ネタ、キャラクターの異形化、精神汚染、幻覚、能力やキャラクターの自己解釈、複数END、救いのない物語設定が含まれます。
[p]その他世の中にあるたくさんの注意書きに含まれるもの、すべてが含まれるといっても過言ではありません。
[p]この先については自己責任となります。製作者は一切の責任を負いません。

[glink  color="noon_btn"  storage="main.ks"  x="360"  y="150"  text="大丈夫だ、問題ない"  target="*guroflgYes"  clickse="sei_ge_bubble01.mp3"]
[glink  color="noon_btn"  storage="main.ks"  x="360"  y="250"  text="グロゴアなどの表現を控えめにする"  target="*guroflgNo"  clickse="sei_ge_bubble01.mp3"]
[glink  color="noon_btn"  storage="main.ks"  x="360"  y="350"  text="ごめんちょっと無理"  target="*title"  clickse="sei_ge_bubble01.mp3"]
[s]

*guroflgYes
[eval exp="f.guroFlg = 1"]
通常通りの表現で進みます。この設定は今後変更ができません。[l][r]
※もういちどはじめからゲームを開始すると変更した状態でゲームが開始されます[p]
@jump target="*guroflgelse"
*guroflgNo
[eval exp="f.guroFlg = 0"]
グロゴア表現を控えめにしたモードで進みます。この設定は今後変更ができません。[l][r]
※もういちどはじめからゲームを開始すると変更した状態でゲームが開始されます[p]
@jump target="*guroflgelse"
*title
[cm]
あなたは正しい判断をしたと思います。[l][r]
[fadeoutbgm time=3000]
それでは、またの機会に。[p]
[layopt layer="message0" visible=false]
@jump storage="title.ks"
*guroflgelse
[cm]

[init_var]

[pushlog text="*--------------*"]
@playbgm time="3000" storage=sakana_abk_loop.mp3 loop=true
#
口もきけぬ阿呆な女の話。[p]

朝日の、最初の光で君は泡になって消えてしまうんだろう。[p]
……[p]
ああ、[p]
だったらいっそ＿＿[p]

[fadeoutbgm time=3000]

[refresh_ui config_visible="false"]


[pushlog text="[se:アラームの音]"]
[fadeinse storage=alarm.mp3 loop=false time=2000]
[bg storage="room_1.png" time="2000" wait="false"]
[p]
[stopse]
…………うるさい[p]
@playbgm time="3000" storage=natuodayaka.mp3 loop=true
また変な夢を見た気がする[p]
どうやら最近夢見が悪いのだ[p]

#???
ヤナギ～～！！あちぃ～～！！[p]

#
朝から騒がしい同居人[p]
いくら大学生の夏休みが長いと言えど家にこんなのが居たら何も休まらない[p]

#???
あれっ？いまアラーム鳴ってたよな……起きてね～の～？[p]
流石にそれは弛みすぎなんじゃないー？[p]

[pushlog text="???：こんなところまで見に来るなんて変態？嘘だよ。ありがとう"]
#
別に弛んでるつもりはない[p]
たしかに、夏休みに入ってからというもの、レポートにも手を付けず[l][r]
だからと言って遊びに行くわけでもなく[l][r]
だらだらと一日を浪費している[l]が[p]
まったく[l]俺は健康体である[p]
そんな謎の自信が自身を怠惰にしてゆき、気づけばここ数日。[p]
自炊をすると両親に言い切って一人暮らしを始めたというのにカップ麺や冷凍食品という我が家の備蓄を消費し続けている。[p]

#???
なあ～あちぃ～よ～[p]
溶ける～[p]
オレ解けて消えてなくなっちゃうよ良いの～？[p]

#ヤナギ？
(自分で何とかできるだろ…………)[p]
はいはい分かった。[p]

[bg storage="01.png" time="1000" wait="false"]

#???
あ。よかった～[p]
死んじゃったかと思ったわ[p]
起きてたんなら返事くらいしろよな～

[glink  color="noon_btn"  storage="main.ks"  x="360"  y="150"  text="水くらい出せただろ"  target="*mizu1"   clickse="sei_ge_bubble01.mp3"]
[glink  color="noon_btn"  storage="main.ks"  x="360"  y="250"  text="悪かった"  target="*mizu2"   clickse="sei_ge_bubble01.mp3"]
[s]

*mizu1
[cm]
#ヤナギ？
別に自分で水くらい出せたんじゃないですか[p]
#???
だって水とか勝手に出したらお前おこるじゃん[p]
#ヤナギ？
べつに怒ったことはない。[p]
[bg storage="01_2.png" time="1000" wait="false"]
#???
あれ～？そうだっけ………[p]
@jump target="*mizuelse"
*mizu2
[cm]
#ヤナギ？
…………[l]次からは気を付ける[p]
[bg storage="01_3.png" time="1000" wait="false"]
#???
これで何度目だよ～。疲れてんじゃない？[p]
肩もんでやろっか！[cm]
#ヤナギ？
爪が刺さる。[p]
[bg storage="01_4.png" time="1000" wait="false"]
#???
ちぇ～…………[p]
*mizuelse

#
この、人と魚の中間見たいな見た目をした男が俺の同居人だ。[p]
いつからこいつが居るかとか。[r]
なんでこいつがいるかとか[r]
そういう細かいことは覚えてない[p]
ただ………[l]いてくれてよかった。[l][r]
それだけはなぜか感じるし。覚えている。[p]


[bg storage="01.png" time="1000" wait="false"]

#同居人
今日は外出んの～？[p]
[bg storage="01_5.png" time="1000" wait="false"]
#同居人
オレこの前くった甘いのがいい！[p]

#ヤナギ？
甘いのなんかあげたか？[p]

[bg storage="01_6.png" time="1000" wait="false"]
#同居人
あれ？まあいいじゃん！[p]
ちょっと！ちょっとだけ！[p]

#ヤナギ？
…………[l]駄目です。[p]

[bg storage="01_7.png" time="1000" wait="false"]
#同居人
ひでー！[p]

[bg storage="laundry_1.png" time="1000" wait="false" method="slideInLeft"]
#
これ以上相手をしてられない。[p]

[bg storage="living1_1.png" time="1000" wait="false" method="slideInLeft"]
#
妙に今日は頭が痛いんだ。[l][r]

[bg storage="room_1.png" time="1000" wait="false" method="slideInLeft"]
#
早く寝よう…………[p]
……？[l][r]
[font bold=true] 薬箱 [resetfont]はどこだ?[p]


[refresh_ui config_visible="true"]

; --- dey1 ---
;[refresh_room]

#
いまはここまで。[p]


@jump storage="title.ks"
[s]