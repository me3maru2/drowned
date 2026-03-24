
*start

[cm]
[clearfix]
[start_keyconfig]


[bg storage="non.png" time="100"]

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

[glink  color="noon_btn"  storage="main.ks"  x="410"  y="150"  text="大丈夫だ、問題ない"  target="*guroflgYes"  clickse="sei_ge_bubble01.mp3"]
[glink  color="noon_btn"  storage="main.ks"  x="410"  y="250"  text="グロゴアなどの表現を控えめにする"  target="*guroflgNo"  clickse="sei_ge_bubble01.mp3"]
[glink  color="noon_btn"  storage="main.ks"  x="410"  y="350"  text="ごめんちょっと無理"  target="*title"  clickse="sei_ge_bubble01.mp3"]
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
@call storage="../others/texts.ks"

[pushlog text="*--------------*"]

;==============================================================================
;       ===  プロローグ ===
;==============================================================================

[bg storage="00.png" time="2000" wait="false"]
@playbgm storage=sakana_abk_loop.mp3 loop=true
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
[p]
[bg storage="noon_room.png" time="2000" wait="false"]
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

[glink  color="noon_btn"  storage="main.ks"  x="410"  y="150"  text="水くらい出せただろ"  target="*mizu1"   clickse="sei_ge_bubble01.mp3"]
[glink  color="noon_btn"  storage="main.ks"  x="410"  y="250"  text="悪かった"  target="*mizu2"   clickse="sei_ge_bubble01.mp3"]
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
[cm]

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

[bg storage="noon_laundry.png" time="1000" wait="false" method="slideInLeft"]
#
これ以上相手をしてられない。[p]

[bg storage="noon_living1.png" time="1000" wait="false" method="slideInLeft"]
#
妙に今日は頭が痛いんだ。[l][r]

[bg storage="noon_room.png" time="1000" wait="false" method="slideInLeft"]
[eval exp="f.currInfo.room = 6"]
#
早く寝よう…………[p]
……？[l][r]
[font bold=true] 薬箱 [resetfont]はどこだ?[p]


;==============================================================================
;       ===  探索パート開始 ===
;==============================================================================


;[refresh_ui config_visible="true"]
;[layopt layer=message0 clickthrough=true]
; --- day1 ---
;[sCntReset]
;*day1
;[refresh_room]
;[s]

; --- day2 ---
;*day2
;[refresh_room]
;[s]

; --- day3 ---
;*day3
;[refresh_room]
;[s]

;*next_phase
;   [if exp="f.currInfo.time == 'night'"]
;        [call storage="main.ks" target="*last_day"]
;    [endif]
;    [iscript]
;    if (f.currInfo.time == 'noon') {
;        f.currInfo.time = 'evening';
;    } else if (f.currInfo.time == 'evening') {
;        f.currInfo.time = 'night';
;    } else {
;        f.currInfo.day += 1;
;        f.currInfo.time = 'noon';
;    }
;    [endscript]
;    [sCntReset]
;    [mask_off]
;    [if exp="f.currInfo.day == 1"]
;        @jump storage="main.ks" target="*day1"
;    [endif]
    ;[if exp="f.currInfo.day == 2"]
    ;    @jump storage="main.ks" target="*day2"
    ;[endif]
    ;[if exp="f.currInfo.day == 3"]
    ;    @jump storage="main.ks" target="*day3"
    ;[endif]


[refresh_ui config_visible="false"]
[show_ev_name title="デモエンディング"]
#
デモ版をプレイいただきありがとうございます。[p]
夏ごろに完成予定ですので、（何年のとは言わない）[l][r]
気が向きましたら、その時にも遊んでいただけると嬉しいです[p]
なにかバグや問題がありましたら、Twitter(X)の方へご連絡ください[p]
なお、ソースコードの開示などをするつもりは有りません[l][r]
できるだけ見ないでください[l][r]
えっち！[p]

…[l]……[l]………[l]
あと、余談ですが[p]
霊新なのかなこれ。[l][r]
新霊なのかなこれ。[l][r]
教えて誰か。[p]

[mask time="500" color="black"]
@jump storage="title.ks"
[s]




;==============================================================================
;       ===  イベント分岐 ===
;==============================================================================
*last_day
    [if exp="f.currInfo.day == 1"]
        [iscript]
            tf.bedtime = (Math.random() < 0.8) ? 1 : 2;
        [endscript]
        [if exp="tf.bedtime == 1"]
            [iscript]
                f.eventFlg[0][1] = 2;
            [endscript]
            [call storage="main.ks" target="*ev_day1_1"]
        [else]
            [iscript]
                f.eventFlg[0][2] = 2;
            [endscript]
            [call storage="main.ks" target="*ev_day1_2"]
        [endif]
    [endif]
    [if exp="f.currInfo.day == 2"]
        [iscript]
            tf.bedtime = (Math.random() < 0.9) ? 1 : 2;
        [endscript]
        [if exp="tf.bedtime == 1"]
            [iscript]
                f.eventFlg[1][2] = 2;
            [endscript]
            [call storage="main.ks" target="*ev_day2_2"]
        [else]
            [iscript]
                f.eventFlg[1][2] = 2;
            [endscript]
            [call storage="main.ks" target="*ev_day2_3"]
        [endif]
    [endif]
    [if exp="f.currInfo.day == 3"]
        [iscript]
            tf.bedtime = (Math.random() < 0.95) ? 1 : 2;
        [endscript]
        [if exp="tf.bedtime == 1"]
            [iscript]
                f.eventFlg[2][1] = 2;
            [endscript]
            [call storage="main.ks" target="*ev_day3_1"]
        [else]
            [iscript]
                f.eventFlg[2][2] = 2;
            [endscript]
            [call storage="main.ks" target="*ev_day3_1"]
        [endif]
    [endif]
    [refresh_ui config_visible="true"]
[return]


;==============================================================================
;       ===  イベント定義 ===
;==============================================================================

;==============

;day1

;==============

*ev_day1_0
;回想1
[refresh_ui config_visible="false"]
[show_ev_name title="01.ソーダ味"]
#
彼と、アイスを食べた。[p]
ソーダ味のアイスでバニラアイスを包んだだけの食べ進めるたびに頭が痛くなる兵器。[p]
あれを貴方はさぞおいしそうにほおばって[l][r]
案の定、頭が痛いと笑う。[p]

#ヤナギ
俺は、あのとき何味を食べたんだっけ。[p]

#
冷蔵庫の中にアイスが１本入っていた。[p]
真ん中に溝があって、２本に割れるアイス。[l][r]
あれを綺麗に折れる人間なんて要るんだろうか。[p]
気付けばそれを手に取っていた。[l][r]
手が冷えていく………[p]



[iscript]
    f.eventFlg[0][6] = 1; // 調理1
[endscript]
[hide_ev_name]
[return]

*ev_day1_1
;就寝1（0.8）
[bg storage="daylast.png" time="1000" wait="false"]
[mask_off]
[refresh_ui config_visible="false"]
[show_ev_name title="02.おやすみ！"]
[sleepORnextday]
[if exp="tf.lastdayFlg == true"]
#
きょうは、もう寝よう[p]
[else]
#
こんなの夢だ…………目が覚めたら。[p]
目が、[r]さめたら…………[p]
[endif]

[hide_ev_name]
[mask time="500" color="black"]
[return]

*ev_day1_2
;就寝2（0.2）
[bg storage="daylast.png" time="1000" wait="false"]
[mask_off]
[refresh_ui config_visible="false"]
[show_ev_name title="03.おやすみなさい…"]
[sleepORnextday]
[if exp="tf.lastdayFlg == true"]
#
きょうは、もう寝よう[p]
[else]
#
こんなの夢だ…………目が覚めたら。[p]
目が、[r]さめたら…………[p]
[endif]

[hide_ev_name]
[mask time="500" color="black"]
[return]

*ev_day1_3
;空腹1
[refresh_ui config_visible="false"]
[show_ev_name title="04.おなかすいた"]
#
空腹1[p]
[hide_ev_name]
[return]

*ev_day1_4
;電話1(0.00504)
[refresh_ui config_visible="false"]
[show_ev_name title="05.通信障害？"]
#
電話1[p]
[hide_ev_name]
[return]

*ev_day1_5
;ニュース1
[refresh_ui config_visible="false"]
[show_ev_name title="06.ニュースだ"]
#
ニュース1[p]
[hide_ev_name]
[return]


*ev_day1_6
;調理1
[refresh_ui config_visible="false"]
[show_ev_name title="07.たまには自炊してね"]
#
調理1[p]
[hide_ev_name]
[return]


*ev_day1_7
;冷蔵庫のおやつ1(0.1)
[refresh_ui config_visible="false"]
[show_ev_name title="08.おやつ発見！"]
#
冷蔵庫のおやつ1[p]
[hide_ev_name]
[return]




;==============

;day2

;==============



*ev_day2_0
;回想2(0.8)
[refresh_ui config_visible="false"]
[show_ev_name title="09.雨の日"]
#
回想2[p]

[hide_ev_name]
[return]

*ev_day2_1
;回想3（0.49）
[refresh_ui config_visible="false"]
[show_ev_name title="10.テレビ出てるね"]
#
回想3[p]
[hide_ev_name]
[return]

*ev_day2_2
;就寝3（0.9）
[bg storage="daylast.png" time="1000" wait="false"]
[mask_off]
[refresh_ui config_visible="false"]
[show_ev_name title="11.おやすみ"]
[sleepORnextday]
[if exp="tf.lastdayFlg == true"]
#
きょうは、もう寝よう[p]
[else]
#
こんなの夢だ…………目が覚めたら。[p]
目が、[r]さめたら…………[p]
[endif]
[mask time="500" color="black"]
[hide_ev_name]
@jump storage="macro.ks" target="*back_from_event"

*ev_day2_3
;就寝4(0.1)
[bg storage="daylast.png" time="1000" wait="false"]
[mask_off]
[refresh_ui config_visible="false"]
[show_ev_name title="12.いい夢みろよ"]
[sleepORnextday]
[if exp="tf.lastdayFlg == true"]
#
きょうは、もう寝よう[p]
[else]
#
こんなの夢だ…………目が覚めたら。[p]
目が、[r]さめたら…………[p]
[endif]
[mask time="500" color="black"]
[hide_ev_name]
[return]

*ev_day2_4
;空腹2(0.1)
[refresh_ui config_visible="false"]
[show_ev_name title="13.お腹が鳴ってる"]
#
空腹2[p]
[hide_ev_name]
[return]

*ev_day2_5
;空腹3
[refresh_ui config_visible="false"]
[show_ev_name title="14.あじけない"]
#
空腹3[p]
[hide_ev_name]
[return]


*ev_day2_6
;電話2(0.0504)
[refresh_ui config_visible="false"]
[show_ev_name title="15.お元気ですか"]
#
電話2[p]
……無理しないでくださいね[p]
[hide_ev_name]
[return]


*ev_day2_7
;セイレーン発症
[refresh_ui config_visible="false"]
[show_ev_name title="16.うたごえ"]
#
セイレーン発症[p]
[hide_ev_name]
[return]


*ev_day2_8
;ニュース2
[refresh_ui config_visible="false"]
[show_ev_name title="17.水難事故"]
#
ニュース2[p]
[hide_ev_name]
[return]


*ev_day2_9
;調理2
[refresh_ui config_visible="false"]
[show_ev_name title="18.きみの得意料理は"]
#
君の得意料理は、なんだっけ[p]
[hide_ev_name]
[return]


*ev_day2_10
;夕立(0.5)
[refresh_ui config_visible="false"]
[show_ev_name title="19.洗濯物"]
#
夕立[p]
[hide_ev_name]
[return]


*ev_day2_11
;冷蔵庫のおやつ2(0.15)
[refresh_ui config_visible="false"]
[show_ev_name title="20.もう食べれないね"]
#
冷蔵庫のおやつ2[p]
[hide_ev_name]
[return]


;==============

;day3

;==============



*ev_day3_0
;回想4(0.049)
[refresh_ui config_visible="false"]
[show_ev_name title="21.クッション戦争"]
#
回想4[p]

[hide_ev_name]
[return]

*ev_day3_1
;就寝5（0.95）
[bg storage="daylast.png" time="1000" wait="false"]
[mask_off]
[refresh_ui config_visible="false"]
[show_ev_name title="22.寝て忘れたい"]
[sleepORnextday]
[if exp="tf.lastdayFlg == true"]
#
きょうは、もう寝よう[p]
[else]
#
こんなの夢だ…………目が覚めたら。[p]
目が、[r]さめたら…………[p]
[endif]
[mask time="500" color="black"]
[hide_ev_name]
[return]

*ev_day3_2
;就寝6（0.05）
[bg storage="daylast.png" time="1000" wait="false"]
[mask_off]
[refresh_ui config_visible="false"]
[show_ev_name title="23.寝るのが怖い"]
[sleepORnextday]
[if exp="tf.lastdayFlg == true"]
#
きょうは、もう寝よう[p]
[else]
#
こんなの夢だ…………目が覚めたら。[p]
目が、[r]さめたら…………[p]
[endif]
[mask time="500" color="black"]
[hide_ev_name]
@jump storage="macro.ks" target="*back_from_event"

*ev_day3_3
;空腹4(0.616)
[refresh_ui config_visible="false"]
[show_ev_name title="24.脳みその味"]
#
空腹4[p]
[hide_ev_name]
[return]

*ev_day3_4
;空腹5
[refresh_ui config_visible="false"]
[show_ev_name title="25.吐き出してしまいそう"]
#
空腹5[p]
[hide_ev_name]
[return]

*ev_day3_5
;空腹6(0.0616)
[refresh_ui config_visible="false"]
[show_ev_name title="26.海水の味"]
#
空腹6[p]
[hide_ev_name]
[return]


*ev_day3_6
;ニュース3
[refresh_ui config_visible="false"]
[show_ev_name title="27. 44.9%"]
#
水難事故の致死率[p]
貴方が助かる確率も[p]
蘇生率は５分を過ぎた途端に、急激に低下するらしい[p]
[hide_ev_name]
[return]


*ev_day3_7
    ;冷蔵庫のおやつ3(0.2)
    [refresh_ui config_visible="false"]
    [show_ev_name title="28.消費期限"]
    #
    …………貴方が好きなプリンの消費期限が切れていた。[p]
    [hide_ev_name]
    [return]

;==============================================================================
;       ===  会話定義 ===
;==============================================================================

*show_topics
    [clearfix name="search_btn,move_btn"]
    [iscript]
        tf.day =f.currInfo.day-1;
    [endscript]

    [if exp="f.topicFlg[tf.day][0] >= 1"]
    [glink color="&f.currInfo.time+'_btn'" x=360 y=100 text="冷凍庫のアイス" storage="main.ks" target="*talk_d1_0" clickse="sei_ge_bubble01.mp3"]
    [endif]

    [if exp="f.topicFlg[tf.day][1] >= 1"]
    [glink color="&f.currInfo.time+'_btn'" x=360 y=175 text="名前について" storage="main.ks" target="*talk_d1_1" clickse="sei_ge_bubble01.mp3"]
    [endif]

    [if exp="f.topicFlg[tf.day][2] >= 1"]
    [glink color="&f.currInfo.time+'_btn'" x=360 y=250 text="水の温度" storage="main.ks" target="*talk_d1_2" clickse="sei_ge_bubble01.mp3"]
    [endif]

    [glink color="&f.currInfo.time+'_btn'" x=360 y=400 text="やめる" storage="macro.ks" target="*talk_stop_return" clickse="sei_ge_bubble01.mp3"]
    [s]

*talk_d1_0
    [iscript]
        f.searchCnt -= 1; 
        f.topicFlg[f.currInfo.day-1][0] += 1;
        tf.sflg =f.topicFlg[f.currInfo.day-1][0];
    [endscript]
    [refresh_ui config_visible="false"]
    [show_ev_name title="冷凍庫のアイス"]
    [if exp="f.reiya.san > 30"]
        [if exp="tf.sflg > 5"]
            #同居人
            なーこれで何回目？[p]
            わかんないか。何でもない。[p]
        [endif]
        [if exp="tf.sflg == 4"]
            #同居人
            いや悪かったって！[p]
            でも俺食べてねーよ！？[p]
            だってここから出られないんだからさぁ……[l][r]
            食べれるわけないじゃ～ん[p]
        [endif]
        [if exp="tf.sflg == 3"]
            #同居人
            あれ、いや何でもない…………[p]
        [endif]
        [if exp="tf.sflg <=4 "]
            #同居人
            初見のはんのう[p]
        [endif]
    [else]
        （狂気の会話）[p]
    [endif]
    [hide_ev_name]
    [return]

*talk_d1_1
    [iscript]
        f.searchCnt -= 1; 
        f.topicFlg[f.currInfo.day-1][1] += 1;
        tf.sflg =f.topicFlg[f.currInfo.day-1][1];
    [endscript]
    [refresh_ui config_visible="false"]
    [show_ev_name title="名前について"]
    [if exp="f.reiya.san > 30"]
        [if exp="tf.sflg > 5"]
            #同居人
            なーこれで何回目？[p]
            わかんないか。何でもない。[p]
        [endif]
        [if exp="tf.sflg == 4"]
            #同居人
            またこの話題～？飽きたんだけどぉ…………[p]
        [endif]
        [if exp="tf.sflg == 3"]
            #同居人
            あれいや何でもない…………[p]
        [endif]
        [if exp="tf.sflg <=4 "]
            #同居人
            初見のはんのう[p]
        [endif]
    [else]
        （狂気の会話）[p]
    [endif]
    [hide_ev_name]
    @jump storage="main.ks" target="*show_topics"

*talk_d1_2
    [iscript]
        f.searchCnt -= 1; 
        f.topicFlg[f.currInfo.day-1][2] += 1;
        tf.sflg =f.topicFlg[f.currInfo.day-1][2];
    [endscript]
    [refresh_ui config_visible="false"]
    [show_ev_name title="水の温度"]
    [if exp="f.reiya.san > 30"]
        [if exp="tf.sflg > 5"]
            #同居人
            なーこれで何回目？[p]
            わかんないか。何でもない。[p]
        [endif]
        [if exp="tf.sflg == 4"]
            #同居人
            またこの話題～？飽きたんだけどぉ…………[p]
        [endif]
        [if exp="tf.sflg == 3"]
            #同居人
            あれいや何でもない…………[p]
        [endif]
        [if exp="tf.sflg <=4 "]
            #同居人
            初見のはんのう[p]
        [endif]
    [else]
        （狂気の会話）[p]
    [endif]
    [hide_ev_name]
    @jump storage="main.ks" target="*show_topics"



;==============================================================================
;       ===  END定義 ===
;==============================================================================

*end1
    ;end1「好い慕い」
    [refresh_ui config_visible="false"]
    [show_ev_name title="END1 好い慕い"]
    #
    好い慕い[p]
    [hide_ev_name]
    [return]
