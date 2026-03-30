
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

精神汚染、幻覚、能力やキャラクターの自己解釈、複数END、救いのない物語設定が含まれます。本作品には、r15程度のグロゴア表現、死ネタ、キャラクターの異形化、
[p]また、本作は「デモ版」であるため演出、画像、文章、UI、などが本編では変更される可能性があります。
[p]その他世の中にあるたくさんの注意書きに含まれるもの、すべてが含まれるといっても過言ではありません。
[l][r]この先については自己責任となります。製作者は一切の責任を負いません。

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
[enable_click_effect]
@call storage="../others/texts.ks"

[pushlog text="*--------------*"]

;==============================================================================
;       ===  プロローグ ===
;==============================================================================

[bg storage="00.png" time="2000" wait="false"]
[play_bgm_title storage="sakana_abk_loop.mp3" title="魚たちの夢"]
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
[play_bgm_title storage="natuodayaka.mp3" title="夏の穏やかな海辺で"]
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

[bg storage="01.png" time="1000" wait="true"]

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
[bg storage="01_2.png" time="0" wait="true"]
#???
あれ～？そうだっけ………[p]
@jump target="*mizuelse"
*mizu2
[cm]
#ヤナギ？
…………[l]次からは気を付ける[p]
[bg storage="01_3.png" time="0" wait="true"]
#???
これで何度目だよ～。疲れてんじゃない？[p]
肩もんでやろっか！[cm]
#ヤナギ？
爪が刺さる。[p]
[bg storage="01_4.png" time="0" wait="true"]
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


[bg storage="01.png" time="0" wait="true"]

#同居人
今日は外出んの～？[p]
[bg storage="01_5.png" time="0" wait="true"]
#同居人
オレこの前くった甘いのがいい！[p]

#ヤナギ？
甘いのなんかあげたか？[p]

[bg storage="01_6.png" time="0" wait="true"]
#同居人
あれ？まあいいじゃん！[p]
ちょっと！ちょっとだけ！[p]

#ヤナギ？
…………[l]駄目です。[p]

[bg storage="01_7.png" time="0" wait="true"]
#同居人
ひでー！[p]

[bg storage="noon_laundry.png" time="1000" wait="true" method="slideInLeft"]
[eval exp="f.currInfo.room = 3"]
#
これ以上相手をしてられない。[p]

[bg storage="noon_living1.png" time="1000" wait="true" method="slideInLeft"]
[eval exp="f.currInfo.room = 4"]
#
妙に今日は頭が痛いんだ。[l][r]

[bg storage="noon_room.png" time="1000" wait="true"method="slideInLeft"]
[eval exp="f.currInfo.room = 6"]
#
早く寝よう…………[p]
……？[l][r]
[font bold=true] 薬箱 [resetfont]はどこだ?[p]


;==============================================================================
;       ===  探索パート開始 ===
;==============================================================================


[refresh_ui config_visible="true"]
[layopt layer="message0" clickthrough=true]
; --- day1 ---
[sCntReset]
[call storage="main.ks" target="*refresh_room"]
[s]

*day1
[if exp="f.currInfo.time == 'noon'"]
    [refresh_ui config_visible="false"]
    [pushlog text="[se:アラームの音]"]
    [fadeinse storage="alarm.mp3" loop=false time="2000"]
    [p]
    [play_bgm_title storage="natuodayaka.mp3" title="夏の穏やかな海辺で"]
    [eval exp="f.currInfo.room = 6"]
    [bg storage="noon_room.png" time="2000" wait="false"]
    [stopse]
    …………うるさい[p]
    また変な夢を見た気がする[p]
    
    [refresh_ui config_visible="true"]
[endif]

[call storage="main.ks" target="*refresh_room"]

[if exp="f.currInfo.time == 'evening'"]
    [pushlog text="---時間帯：夕---"]
    …………もう日が落ちている[p]
[endif]
[if exp="f.currInfo.time == 'night'"]
    [play_bgm_title storage="yoruno.mp3" title="夜のとばりが下りるころ"]
    [pushlog text="---時間帯：夜---"]
    …………ねむたい[p]
    最近夢見が悪いからか、寝不足気味な気がする[p]
[endif]
[call storage="main.ks" target=&tf.rpTarget]
[s]

; --- day2 ---
*day2
[refresh_ui config_visible="false"]
[show_ev_name title="デモエンディング"]
#
デモ版をプレイいただきありがとうございます。[p]
完成版はこれより画像やテキストを増やしてお届けできると思います。[p]
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
[disable_click_effect]
@jump storage="title.ks"
[s]
;[call storage="main.ks" target="*refresh_room"]
;[s]

; --- day3 ---
;*day3
;[call storage="main.ks" target="*refresh_room"]
;[s]

*next_phase
    [if exp="f.currInfo.time == 'night'"]
        [call storage="main.ks" target="*last_day"]
    [endif]
    [iscript]
        if (f.currInfo.time == 'noon') {
            f.currInfo.time = 'evening';
        } else if (f.currInfo.time == 'evening') {
            f.currInfo.time = 'night';
        } else {
            f.currInfo.day += 1;
            f.currInfo.time = 'noon';
        }
    [endscript]
    [sCntReset]
    [iscript]
        TYRANO.kag.stat.is_skip = false;
    [endscript]
    [wait time="300"]
    [mask_off]
    [if exp="f.currInfo.day == 1"]
        @jump storage="main.ks" target="*day1"
    [endif]
    [if exp="f.currInfo.day == 2"]
        @jump storage="main.ks" target="*day2"
    [endif]
    ;[if exp="f.currInfo.day == 3"]
    ;    @jump storage="main.ks" target="*day3"
    ;[endif]

[s]




;==============================================================================
;       ===  挙動用ラベル ===
;==============================================================================


*talk_or_search
    [clearfix name="search_btn,move_btn"]
    [cm]
    [glink color="&f.currInfo.time+'_btn'" x=360 y=150 text="調べる"    storage="main.ks" target="*do_search"]
    [glink color="&f.currInfo.time+'_btn'" x=360 y=250 text="話しかける" storage="main.ks" target="*do_talk"]
    [s]

*do_talk
    [clearfix name="search_btn,move_btn"]
    [play_bgm_title storage="musin.mp3" title="無心になれる作業"]
    *talk_loop
    [cm]
    [iscript]
    tf.hasTopic = false;
    for (var i = 0; i < f.topicFlg[f.currInfo.day-1].length; i++) {
        if (f.topicFlg[f.currInfo.day-1][i] == 1) {
            tf.hasTopic = true;
            break;
        }
    }
    [endscript]
    [if exp="tf.hasTopic == false"]
        [if exp="f.currInfo.time == 'night'"]
            [play_bgm_title storage="yoruno.mp3" title="夜のとばりが下りるころ"]
        [else]
            [play_bgm_title storage="natuodayaka.mp3" title="夏の穏やかな海辺で"]
        [endif]
        #
        今は特に話すこともないな[p]
        [call storage="main.ks" target="*refresh_room"]
        [s]
    [else]
        [jump storage="main.ks" target="*show_topics"]
    [endif]

*talk_stop_return
    [cm]
    [iscript]
        tf.is_waiting = false;
    [endscript]
    @jump target="*refresh_room"
    [s]

; ======================================================
; 探索ロジック
; ======================================================

*move_left
[iscript]
    // 左移動：0なら6へ、それ以外は-1
    f.currInfo.room = (f.currInfo.room == 0) ? 6 : f.currInfo.room - 1;
[endscript]
@jump target="*refresh_room"

*move_right
[iscript]
    // 右移動：6なら0へ、それ以外は+1
    f.currInfo.room = (f.currInfo.room == 6) ? 0 : f.currInfo.room + 1;
[endscript]
@jump target="*refresh_room"

*do_search
    [clearfix name="search_btn,move_btn"]
    [iscript]
    tf.cost = tf.cost || 3;
    tf.can_action = (f.searchCnt >= tf.cost);
    tf.evTarget = '*ev_d' + f.currInfo.day + '_r' + f.currInfo.room + '_p' + tf.point;
    [endscript]

    [if exp="tf.can_action == true"]
            [eval exp="f.searchCnt -= tf.cost"]
            [sFlgedit place=&tf.point]
            
        [clearstack]
        ; イベント呼び出し
        @call storage="event.ks" target="&tf.evTarget"
        [if exp="f.last_day_Flg==true"]
            @jump storage="main.ks" target="*phase_end"
            [eval exp="f.last_day_Flg = false"]
        [endif]

        *back_from_event
        ; 戻ってきたらUI更新
        [trace exp="'残り回数:' + f.searchCnt"]
        [layopt layer="message0" visible="false"]
        [iscript]
            // 画面全体のクリック待ちイベントを強制削除し、メッセージレイヤをマウス透過させる
            TYRANO.kag.stat.is_waiting_click = false;
            $(".message0_fore").css("pointer-events", "none");
            $("#event_layer").hide(); 
        [endscript]
        [layopt layer="message0" visible="true"]
        [if exp="f.searchCnt <= 0"]
            @jump storage="main.ks" target="*phase_end"
        [endif]
        [call storage="main.ks" target="*refresh_room"]
        [s]
    [else]
        [cm]
        @jump storage="main.ks" target="*phase_end"
    [endif]



*phase_end
    [cm][er]
    [clearfix]
    [clearstack]
    ; レイヤーを掃除して暗転
    [freeimage layer="0"]
    [freeimage layer="1"]
    [freeimage layer="2"]
    [iscript]
        TYRANO.kag.stat.is_skip = false;
    [endscript]
    [wait time="300"]
    [mask time="500" color="black"]
        [jump storage="main.ks" target="*next_phase"]
    [s]


*refresh_room
  [clearfix name="search_btn,move_btn"]
  [clearfix name="move_btn"]
  [cm]
  ;[freeimage layer="0"]

  ; 背景変更 (例: room_noon.png)
  [iscript]
    tf.roomname = ['bath','foyer','kitchen','laundry','living1','living2','room'];
    tf.bgfile = f.currInfo.time + '_' + tf.roomname[f.currInfo.room] + '.png';
  [endscript]
  [bg storage="&tf.bgfile" time="500" wait="true"]
  [layopt layer="0" visible="true"]

  ; 左右移動ボタン
  [iscript]
    tf.prev = (f.currInfo.room == 0) ? 6 : f.currInfo.room - 1;
    tf.next = (f.currInfo.room == 6) ? 0 : f.currInfo.room + 1;
  [endscript]
  [button name="move_btn" graphic="&'button/'+f.currInfo.time+'_left.png'" enterimg="&'button/'+f.currInfo.time+'_left2.png'" zindex="999" fix="true" x=0 y=380 storage="main.ks" target="*move_left"]
  [button name="move_btn" graphic="&'button/'+f.currInfo.time+'_right.png'" enterimg="&'button/'+f.currInfo.time+'_right2.png'" zindex="999" fix="true" x=1220 y=380 storage="main.ks" target="*move_right"]
  ; 探索ポイントの表示（roomごとに分岐）
  [iscript]
    tf.rpTarget = '*rp_d' + f.currInfo.day + '_r' + f.currInfo.room;
  [endscript]
  [jump storage="main.ks" target="&tf.rpTarget"]
  *end_refresh_search_btn
  ; UI（ボタン系）の再表示
  [refresh_ui config_visible="true"]
  [if exp="TYRANO.kag.stat.stack.call.length > 0"]
    [return]
  [else]
    [s]
  [endif]

; ======================================================
; 探索ポイントボタン（ラベル形式）
; ======================================================

*rp_d1_r0
    ; day1・風呂
    [if exp="f.currInfo.time== 'noon'"]
        [button name="search_btn,move_btn" graphic="button/noon_search.png"    x=1100 y=102 storage="main.ks" target="*do_search" zindex="999" fix="true"      exp="tf.point=0, tf.cost=3" clickse="sei_ge_bubble01.mp3"]
        [button name="search_btn,move_btn" graphic="button/noon_search.png"    x=852 y=339  storage="main.ks" target="*do_search" zindex="999" fix="true"      exp="tf.point=3, tf.cost=3" clickse="sei_ge_bubble01.mp3"]
        [button name="search_btn,move_btn" graphic="button/noon_search.png"    x=1121 y=353 storage="main.ks" target="*talk_or_search" zindex="999" fix="true" exp="tf.point=6, tf.cost=3" clickse="sei_ge_bubble01.mp3"]
    [endif]
    [if exp="f.currInfo.time== 'evening'"]
        [event_rnd day="1" idx="3"]
        [button name="search_btn,move_btn" graphic="button/evening_search.png" x=1100 y=102 storage="main.ks" target="*do_search" zindex="999" fix="true"      exp="tf.point=1, tf.cost=3" clickse="sei_ge_bubble01.mp3"]
        [button name="search_btn,move_btn" graphic="button/evening_search.png" x=852 y=339  storage="main.ks" target="*do_search" zindex="999" fix="true"      exp="tf.point=4, tf.cost=3" clickse="sei_ge_bubble01.mp3"]
        [button name="search_btn,move_btn" graphic="button/evening_search.png" x=1121 y=353 storage="main.ks" target="*talk_or_search" zindex="999" fix="true" exp="tf.point=7, tf.cost=3" clickse="sei_ge_bubble01.mp3"]
    [endif]
    [if exp="f.currInfo.time== 'night'"]
        [button name="search_btn,move_btn" graphic="button/night_search.png"   x=1100 y=102 storage="main.ks" target="*do_search" zindex="999" fix="true"      exp="tf.point=2, tf.cost=3" clickse="sei_ge_bubble01.mp3"]
        [button name="search_btn,move_btn" graphic="button/night_search.png"   x=852 y=339  storage="main.ks" target="*do_search" zindex="999" fix="true"      exp="tf.point=5, tf.cost=3" clickse="sei_ge_bubble01.mp3"]
        [button name="search_btn,move_btn" graphic="button/night_search.png"   x=1121 y=353 storage="main.ks" target="*talk_or_search" zindex="999" fix="true" exp="tf.point=8, tf.cost=3" clickse="sei_ge_bubble01.mp3"]
    [endif]
    [button name="search_btn,move_btn" graphic="&'button/'+f.currInfo.time+'_search.png'" x=270 y=322 storage="main.ks" target="*do_search" zindex="999" fix="true" exp="tf.point=9, tf.cost=3" clickse="sei_ge_bubble01.mp3"]
      [jump storage="main.ks" target="*end_refresh_search_btn"]

*rp_d1_r1
    ; day1・玄関
    [event_rnd day="1" idx="4" prob="0.00504"]
    [if exp="f.currInfo.time== 'noon'"]
        [button name="search_btn,move_btn" graphic="button/noon_search.png"    x=610 y=141 storage="main.ks" target="*do_search" zindex="999" fix="true" exp="tf.point=0, tf.cost=3" clickse="sei_ge_bubble01.mp3"]
    [endif]
    [if exp="f.currInfo.time== 'evening'"]
        [button name="search_btn,move_btn" graphic="button/evening_search.png" x=610 y=141 storage="main.ks" target="*do_search" zindex="999" fix="true" exp="tf.point=1, tf.cost=3" clickse="sei_ge_bubble01.mp3"]
        [button name="search_btn,move_btn" graphic="button/evening_search.png" x=975 y=100 storage="main.ks" target="*do_search" zindex="999" fix="true" exp="tf.point=4, tf.cost=3" clickse="sei_ge_bubble01.mp3"]
    [endif]
    [if exp="f.currInfo.time== 'night'"]
        [button name="search_btn,move_btn" graphic="button/night_search.png"   x=610 y=141 storage="main.ks" target="*do_search" zindex="999" fix="true" exp="tf.point=2, tf.cost=3" clickse="sei_ge_bubble01.mp3"]
        [button name="search_btn,move_btn" graphic="button/night_search.png"   x=975 y=100 storage="main.ks" target="*do_search" zindex="999" fix="true" exp="tf.point=5, tf.cost=3" clickse="sei_ge_bubble01.mp3"]
    [endif]
    [button name="search_btn,move_btn" graphic="&'button/'+f.currInfo.time+'_search.png'" x=821 y=248 storage="main.ks" target="*do_search" zindex="999" fix="true" exp="tf.point=3, tf.cost=3" clickse="sei_ge_bubble01.mp3"]
      [jump storage="main.ks" target="*end_refresh_search_btn"]

*rp_d1_r2
    ; day1・キッチン
    [event_rnd day="1" idx="0"]
    [event_rnd day="1" idx="4" prob="0.00504"]
    [iscript]
        tf.canCook = (f.currInfo.time== 'noon' && f.eventFlg[0][6] == 1);
    [endscript]
    [if exp="tf.canCook"]
        [event_rnd day="1" idx="6"]
    [endif]
    [button name="search_btn,move_btn" graphic="&'button/'+f.currInfo.time+'_search.png'" x=300 y=210 storage="main.ks" target="*do_search" zindex="999" fix="true" exp="tf.point=0, tf.cost=3" clickse="sei_ge_bubble01.mp3"]
      [jump storage="main.ks" target="*end_refresh_search_btn"]

*rp_d1_r3
    ; day1・ランドリー
    [if exp="f.currInfo.time== 'noon'"]
    [event_rnd day="1" idx="4" prob="0.00504"]
    [button name="search_btn,move_btn" graphic="button/noon_search.png"    x=70 y=405 storage="main.ks" target="*do_search" zindex="999" fix="true" exp="tf.point=0, tf.cost=3" clickse="sei_ge_bubble01.mp3"]
    [button name="search_btn,move_btn" graphic="button/noon_search.png"    x=500 y=95 storage="main.ks" target="*do_search" zindex="999" fix="true" exp="tf.point=3, tf.cost=3" clickse="sei_ge_bubble01.mp3"]
    [endif]
    [if exp="f.currInfo.time== 'evening'"]
    [button name="search_btn,move_btn" graphic="button/evening_search.png" x=70 y=405 storage="main.ks" target="*do_search" zindex="999" fix="true" exp="tf.point=1, tf.cost=3" clickse="sei_ge_bubble01.mp3"]
    [endif]
    [button name="search_btn,move_btn" graphic="&'button/'+f.currInfo.time+'_search.png'" x=390 y=415 storage="main.ks" target="*do_search" zindex="999" fix="true" exp="tf.point=2, tf.cost=3" clickse="sei_ge_bubble01.mp3"]
      [jump storage="main.ks" target="*end_refresh_search_btn"]

*rp_d1_r4
    ; day1・リビング1
    [event_rnd day="1" idx="4" prob="0.00504"]
    [button name="search_btn,move_btn" graphic="&'button/'+f.currInfo.time+'_search.png'" x=815 y=380 storage="main.ks" target="*do_search" zindex="999" fix="true" exp="tf.point=0, tf.cost=2" clickse="sei_ge_bubble01.mp3"]
      [jump storage="main.ks" target="*end_refresh_search_btn"]

*rp_d1_r5
    ; day1・リビング2
    [event_rnd day="1" idx="4" prob="0.00504"]
    [if exp="f.currInfo.time== 'noon'"]
    [button name="search_btn,move_btn" graphic="button/noon_search.png"    x=600 y=140 storage="main.ks" target="*do_search" zindex="999" fix="true" exp="tf.point=0, tf.cost=3" clickse="sei_ge_bubble01.mp3"]
    [endif]
    [if exp="f.currInfo.time== 'evening'"]
    [button name="search_btn,move_btn" graphic="button/evening_search.png" x=600 y=140 storage="main.ks" target="*do_search" zindex="999" fix="true" exp="tf.point=1, tf.cost=3" clickse="sei_ge_bubble01.mp3"]
    [endif]
    [if exp="f.currInfo.time== 'night'"]
    [button name="search_btn,move_btn" graphic="button/night_search.png"   x=600 y=140 storage="main.ks" target="*do_search" zindex="999" fix="true" exp="tf.point=2, tf.cost=3" clickse="sei_ge_bubble01.mp3"]
    [endif]
      [jump storage="main.ks" target="*end_refresh_search_btn"]

*rp_d1_r6
    ; day1・寝室
    [event_rnd day="1" idx="4" prob="0.00504"]
    [if exp="f.currInfo.time== 'noon'"]
    [button name="search_btn,move_btn" graphic="button/noon_search.png"    x=455 y=420  storage="main.ks" target="*do_search" zindex="999" fix="true" exp="tf.point=0, tf.cost=3" clickse="sei_ge_bubble01.mp3"]
    [button name="search_btn,move_btn" graphic="button/noon_search.png"    x=890  y=170 storage="main.ks" target="*do_search" zindex="999" fix="true" exp="tf.point=3, tf.cost=3" clickse="sei_ge_bubble01.mp3"]
    [button name="search_btn,move_btn" graphic="button/noon_search.png"    x=1165 y=215 storage="main.ks" target="*do_search" zindex="999" fix="true" exp="tf.point=6, tf.cost=3" clickse="sei_ge_bubble01.mp3"]
    [endif]
    [if exp="f.currInfo.time== 'evening'"]
    [button name="search_btn,move_btn" graphic="button/evening_search.png" x=455 y=420  storage="main.ks" target="*do_search" zindex="999" fix="true" exp="tf.point=1, tf.cost=3" clickse="sei_ge_bubble01.mp3"]
    [button name="search_btn,move_btn" graphic="button/evening_search.png" x=890  y=170 storage="main.ks" target="*do_search" zindex="999" fix="true" exp="tf.point=4, tf.cost=3" clickse="sei_ge_bubble01.mp3"]
    [button name="search_btn,move_btn" graphic="button/evening_search.png" x=1165 y=215 storage="main.ks" target="*do_search" zindex="999" fix="true" exp="tf.point=7, tf.cost=3" clickse="sei_ge_bubble01.mp3"]
    [endif]
    [if exp="f.currInfo.time== 'night'"]
    [button name="search_btn,move_btn" graphic="button/night_search.png"   x=455 y=420  storage="main.ks" target="*do_search" zindex="999" fix="true" exp="tf.point=2, tf.cost=3" clickse="sei_ge_bubble01.mp3"]
    [button name="search_btn,move_btn" graphic="button/night_search.png"   x=890  y=170 storage="main.ks" target="*do_search" zindex="999" fix="true" exp="tf.point=5, tf.cost=3" clickse="sei_ge_bubble01.mp3"]
    [button name="search_btn,move_btn" graphic="button/night_search.png"   x=1165 y=215 storage="main.ks" target="*do_search" zindex="999" fix="true" exp="tf.point=8, tf.cost=3" clickse="sei_ge_bubble01.mp3"]
    [endif]
      [jump storage="main.ks" target="*end_refresh_search_btn"]


;==============================================================================
;       ===  イベント分岐 ===
;==============================================================================
*last_day
    [refresh_ui config_visible="false"]
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
[SANc sDCnt=1 sDSiz=1 fDCnt=1 fDSiz=6]
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
#ヤナギ
っあ…………[p]
#
二つに割ろうとしたそれは不格好に片方に偏って割れた。[p]
分ける相手も居ないのに。何をしていたんだろう。[p]
大して好きでもないアイスを口に含んだ。[p]
#ヤナギ
頭が、痛いな………[p]
#
[iscript]
    f.eventFlg[0][6] = 1; // 調理1
    if(f.topicFlg[0][0] < 1){
        f.topicFlg[0][0] = 1; // 冷蔵庫のアイス
    }
[endscript]
[hide_ev_name]
[return]

*ev_day1_1
;就寝1（0.8）
[SANc sDCnt=0 sDSiz=1 fDCnt=1 fDSiz=3]
[bg storage="daylast.png" time="1000" wait="false"]
    [iscript]
        TYRANO.kag.stat.is_skip = false;
    [endscript]
    [wait time="300"]
[mask_off]
[refresh_ui config_visible="false"]
[show_ev_name title="02.おやすみ！"]
[play_bgm_title storage="matenrou.mp3" title="摩天楼を見下ろして"]
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
    [iscript]
        TYRANO.kag.stat.is_skip = false;
    [endscript]
    [wait time="300"]
[mask time="500" color="black"]
[return]

*ev_day1_2
;就寝2（0.2）
[SANc sDCnt=1 sDSiz=1 fDCnt=1 fDSiz=6]
[bg storage="daylast.png" time="1000" wait="false"]
    [iscript]
        TYRANO.kag.stat.is_skip = false;
    [endscript]
    [wait time="300"]
[mask_off]
[refresh_ui config_visible="false"]
[show_ev_name title="03.おやすみなさい…"]
[play_bgm_title storage="matenrou.mp3" title="摩天楼を見下ろして"]
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
    [iscript]
        TYRANO.kag.stat.is_skip = false;
    [endscript]
    [wait time="300"]
[mask time="500" color="black"]
[return]

*ev_day1_3
;空腹1
[refresh_ui config_visible="false"]
[show_ev_name title="04.おなかすいた"]
#
ぐう。[p]
同居人の腹が鳴った。[p]
#同居人
やべ、腹減ってきたかも…………[l][r]
ヤナギ、ごは
[cm]
#ヤナギ
ご飯は3日前に食べたでしょう。[p]
#同居人
おおそうじゃったかのぉ…………じゃなくて！[p]
いいの！？オレ死んじゃうよ[p]
＜＜途中＞＞[p]
#
[hide_ev_name]
[return]

*ev_day1_4
;電話1(0.00504)
[refresh_ui config_visible="false"]
[show_ev_name title="05.通信障害？"]
[pushlog text="[se:着信音]"]
[playse storage=tyakusin.mp3]
[p]
[stopse]
[image storage="23.png" layer="0" name="ev_img" x=160 y=0 width=960 visible=true]
#誠
あ、よかった。[p]
生きてるみたいですね。[p]
[anim name="ev_img" left="+=240" time=100]
[glink color="&f.currInfo.time+'_btn'" x=200 y=150 text="用事は？"    storage="main.ks" target="*ev_day1_4_1"]
[glink color="&f.currInfo.time+'_btn'" x=200 y=250 text="いきなり何" storage="main.ks" target="*ev_day1_4_2"]
[s]
*ev_day1_4_1
[anim name="ev_img" left="-=240" time=100]
[if exp="Math.random() < 0.8"]
[SANc sDCnt=0 sDSiz=1 fDCnt=1 fDSiz=3]
#誠
先輩ちゃんと食べてますか？[p]
死なれたりしたら夢見が悪いのでちゃんと食べてくださいね。[p]
あ！それと、人魚はっ__
[endif]
@jump target="*ev_day1_4_else"
*ev_day1_4_2
[anim name="ev_img" left="-=240" time=100]
[if exp="Math.random() < 0.3"]
[SANc sDCnt=0 sDSiz=1 fDCnt=1 fDSiz=3]
#誠
最近全然顔見てないから心配だったんですよ[p]
そうだ！今度ご飯行きませんか[l][r]
そんなところにずっと籠ってたら参っちゃうでしょ[p]
あ！本題忘れてました[p]
＿＿の事ですけど、人＿＿食＿＿と、人＿＿[p]
[endif]
*ev_day1_4_else
#誠
っあれ、聞こ＿な＿＿[p]
なん＿＿＿う＿＿[p]
ま＿＿＿＿＿＿＿＿＿！[p]
[free name="ev_img" layer="0"]
#
…………結局、何を伝えたかったんだろう。[p]
こんど調べてみよう[p]
人魚？とか、言ってた気がする。[l][r]
もしかして家で飼ってるあいつのことがバレたのだろうか[p]
だとしたら…………[p]
[hide_ev_name]
[return]

*ev_day1_5
;ニュース1
[SANc sDCnt=1 sDSiz=1 fDCnt=1 fDSiz=3]
[refresh_ui config_visible="false"]
[SANc sDCnt=1 sDSiz=1 fDCnt=1 fDSiz=6]
[show_ev_name title="06.ニュースだ"]
#
テレビのリモコンはどこにいったんだろう…………。[p]
@bg storage ="&'ev_day1_5_' + f.currInfo.time + '.png'" time=0
#ニュースキャスター
『……続いてのニュースです。先月、■■市■■海岸で発生した大学生の水難事故について、専門家にお話を伺います』[p]
『スタジオには、海難事故の調査に詳しい水難救助専門家の＿＿さんにお越しいただきました』[p]
#専門家
『よろしくお願いします。……ええ、今回の現場ですが、非常に潮の流れが複雑な場所です。一度引き込まれると、自力での浮上はまず困難でしょう』[p]
『特にこの時期の海水温は、人間の体温を奪うには十分すぎるほど低いです。……数分もすれば意識を失い、呼吸器系に致命的なダメージを受けます』[p]
『……最悪の場合、遺体は岩場に打ち付けられ……あるいは、海洋生物による欠損が激しく、発見が遅れるケースも珍しくありません』[p]
#ニュースキャスター
『依然として行方不明となっている……■■さんの捜索は、今日も難航しているとのことですが……』[p]
@bg storage ="&f.currInfo.time + '_living2.png'" time=0
#
……胸が、ムカムカする。[p]
[iscript]
    if(f.topicFlg[0][3]<1){
        f.topicFlg[0][3] = 1; // 海について1
    }
[endscript]
[hide_ev_name]
[return]


*ev_day1_6
;調理1
[refresh_ui config_visible="false"]
[show_ev_name title="07.たまには自炊してね"]
#
<イベントテキスト未実装>[p]
[hide_ev_name]
[return]


*ev_day1_7
;冷蔵庫のおやつ1(0.1)
[SANc sDCnt=1 sDSiz=2 fDCnt=1 fDSiz=6]
[refresh_ui config_visible="false"]
[show_ev_name title="08.おやつ発見！"]
#
冷蔵庫の底にプリンを発見した。[p]
ケーキ屋に売ってるようなプチンとできないタイプ。[l][r]
スプーンじゃうまく掬えなくて底の隅に残ってしまうのがかなり悔しい…………なんて彼が言っていたのを覚えている。[p]
そもそもプリンのカラメルは型から外れやすくするためのものらしい。[p]
…………カラメルのないプリンは、どうやってはがすんだろう。[p]
#ヤナギ
カラメル、後入れのタイプだコレ…………[p]
#
きっと一緒についてた小さなスプーンが庫内に落ちていた気がする。[p]
…………いま食べる気はない。戻しておこう。[p]
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
    [iscript]
        TYRANO.kag.stat.is_skip = false;
    [endscript]
    [wait time="300"]
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
    [iscript]
        TYRANO.kag.stat.is_skip = false;
    [endscript]
    [wait time="300"]
[mask time="500" color="black"]
[hide_ev_name]
[return]

*ev_day2_3
;就寝4(0.1)
[bg storage="daylast.png" time="1000" wait="false"]
    [iscript]
        TYRANO.kag.stat.is_skip = false;
    [endscript]
    [wait time="300"]
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
[return]

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
    #
    [hide_ev_name]
    [return]

;==============================================================================
;       ===  会話定義 ===
;==============================================================================

*show_topics

    [clearfix name="search_btn,move_btn"]
    [iscript]
        if (f.wait_timer) {
            clearTimeout(f.wait_timer);
            f.wait_timer = null;
        }
        if(TYRANO.kag.variable.tf.is_waiting == true && TYRANO.kag.stat.is_strong_stop != true){
            TYRANO.kag.ftag.startTag("jump", {target: "*hochi_event", storage: "main.ks"});
        }
    [endscript]
    [if exp="f.searchCnt <= 0"]
            @jump target="*next_phase"
    [endif]

    [if exp="f.topicFlg[0][0] >= 1"]
        [glink color="&f.currInfo.time+'_btn'" x=200 y=100 text="冷凍庫のアイス" storage="main.ks" target="*talk_d1_0" clickse="sei_ge_bubble01.mp3"]
    [endif]

    [if exp="f.topicFlg[0][1] >= 1"]
        [glink color="&f.currInfo.time+'_btn'" x=200 y=175 text="名前について" storage="main.ks" target="*talk_d1_1" clickse="sei_ge_bubble01.mp3"]
    [endif]

    [if exp="f.topicFlg[0][2] >= 1"]
        [glink color="&f.currInfo.time+'_btn'" x=200 y=250 text="水の温度" storage="main.ks" target="*talk_d1_2" clickse="sei_ge_bubble01.mp3"]
    [endif]
    
    [if exp="f.topicFlg[0][3] >= 1"]
        [glink color="&f.currInfo.time+'_btn'" x=200 y=325 text="海について1" storage="main.ks" target="*talk_d1_3" clickse="sei_ge_bubble01.mp3"]
    [endif]

    [glink color="&f.currInfo.time+'_btn'" x=850 y=420 text="やめる" storage="main.ks" target="*talk_stop_return" clickse="sei_ge_bubble01.mp3"]
    [eval exp="tf.is_waiting = true"]
    
    [iscript]
        tf.is_waiting = true;
        f.wait_timer = setTimeout(function(){
            if(TYRANO.kag.variable.tf.is_waiting == true){
                TYRANO.kag.ftag.startTag("jump", {target: "*hochi_event", storage: "main.ks"});
            }
        }, 20000);
    [endscript]
    [s]

*hochi_event
    [cm]
    [iscript]
        if (!f.hochi_pool_high) {
            f.hochi_pool_high = [0, 1, 2, 3, 4,5,6,7]; // 高SAN用ID
            f.hochi_pool_low = [0, 1, 2, 3, 4,5,6,7];  // 低SAN用ID
        }
        var pool = (f.reiya.san > 30) ? f.hochi_pool_high : f.hochi_pool_low;

        if (pool.length == 0) {
            tf.hochi_idx = -1;

        } else {
            var randomIndex = Math.floor(Math.random() * pool.length);
            tf.hochi_idx = pool.splice(randomIndex, 1)[0];
        }
        tf.hochi_target = (f.reiya.san > 30) ? "*hochi_high_san" : "*hochi_low_san";
    [endscript]
    @jump target="&tf.hochi_target"

    *hochi_high_san
        [if exp="tf.hochi_idx == 0"]
            #同居人
            ………………おい。何ボーッとしてんだよ。[p]
            ……え？寝るのはないんじゃなーい？[p]
            あ。[l][r]起きてたよかった～。[p]
            #
        [elsif exp="tf.hochi_idx == 1"]
            #同居人
            なあ、さっきから、何見てんの。[l][r]
            ……オレなんか見て楽しい？[p]
            #
        [elsif exp="tf.hochi_idx == 2"]
            #同居人
            あ、耳掃除してやろっか。……って、オレの爪じゃ痛いか。はは[p]
            #
        [elsif exp="tf.hochi_idx == 3"]
            #同居人
            ………………外、救急車の音うるさくねー？[p]
            #
        [elsif exp="tf.hochi_idx == 4"]
            #同居人
            この水、お前も入ってみる？ ……あったかいぞ[l][r]
            ……冗談だよ、そんな顔すんなって[p]
            #
        [elsif exp="tf.hochi_idx == 5"]
            #同居人
            昨日雨が降ったってさ。[l][r]
            雨のあとって何て言うか、こう……独特なにおいがするよな～[p]
            あ、洗濯物！[l][r]
            ちゃんと取り込んだか？[p]
            #
        [elsif exp="tf.hochi_idx == 6"]
            #同居人
            なあヤナギ。なんでそんな怖い顔してんの？[p]
            #
        [elsif exp="tf.hochi_idx == 7"]
            #同居人
            えいっ！[p]
            #
            彼が救い上げた水が重力に反して宙を舞い、こちらに降りかかる。[l][r]
            服を着たままの人間にこんな仕打ちはあんまりだろう。[p]
            服が濡れて気持ちわるい………[p]
            #同居人
            どお？少しは涼しくなっただろ～[p]
            #        
        [else]
            #同居人
            ……………………おい、ヤナギ。……返事くらいしろよ。寂しいだろ[p]
            #
            [SANc sDCnt=0 sDSiz=1 fDCnt=1 fDSiz=2]
        [endif]
        @jump target="*hochi_end"

    *hochi_low_san
        [if exp="tf.hochi_idx == 0"]
            #同居人
            ふふ、お前の寝顔、見てるの好きだよ。……昔から変わんないな[p]
            #
        [elsif exp="tf.hochi_idx == 1"]
            #同居人
            …なあ、ずっとここにいてって言ったら[l][r]
            冗談だって！[p]そんな怖い顔すんなよ～[p]
            #
        [elsif exp="tf.hochi_idx == 2"]
            #同居人
            ……喉乾いた？ 水、出してやろっか。……。[l][r]……あ、オレ、ここから動けないんだった[p]
            #
        [elsif exp="tf.hochi_idx == 3"]
            #同居人
            どこにも行かないで……オレの事おいてくの？[p]
            一人にしないで[p]
            って[l][r]言ったら怒る？[p]
            #
        [else]
            #同居人
            なぁ放置？[p]
            放置なのー？[p]
            #
            [SANc sDCnt=0 sDSiz=1 fDCnt=1 fDSiz=2]
        [endif]
        @jump target="*hochi_end"

    *hochi_end
        [eval exp="tf.is_waiting = false"]
        [refresh_ui config_visible="true"]
        @jump storage="main.ks" target="*show_topics"
    [s]

*talk_d1_0
    
    [iscript]
        tf.is_waiting = false;
        f.searchCnt -= 1; 
        f.topicFlg[0][0] += 1;
        tf.sflg =f.topicFlg[0][0];
        clearTimeout(f.wait_timer);
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
            でもオレ食べてねーよ！？[p]
            だってここから出られないんだからさぁ……[l][r]
            食べれるわけないじゃ～ん[p]
            [SANc sDCnt=0 sDSiz=1 fDCnt=1 fDSiz=2]
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
        [if exp="tf.sflg > 5"]
            #同居人
            なーこれで何回目？[p]
            わかんないか。何でもない。[p]
        [endif]
        [if exp="tf.sflg == 4"]
            #同居人
            いや悪かったって！[p]
            でもオレ食べてねーよ！？[p]
            だってここから出られないんだからさぁ……[l][r]
            食べれるわけないじゃ～ん[p]
            [SANc sDCnt=0 sDSiz=1 fDCnt=1 fDSiz=2]
        [endif]
        [if exp="tf.sflg == 3"]
            #同居人
            あれ、いや何でもない…………[p]
        [endif]
        [if exp="tf.sflg <=4 "]
            #同居人
            初見のはんのう[p]
        [endif]
    [endif]
    #
    [hide_ev_name]
    @jump storage="main.ks" target="*show_topics"
    [s]

*talk_d1_1
    
    [iscript]
        tf.is_waiting = false;
        f.searchCnt -= 1;
        f.topicFlg[0][1] += 1;
        tf.sflg =f.topicFlg[0][1];
        clearTimeout(f.wait_timer);
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
            [SANc sDCnt=0 sDSiz=1 fDCnt=1 fDSiz=2]
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
        [if exp="tf.sflg > 5"]
            #同居人
            なーこれで何回目？[p]
            わかんないか。何でもない。[p]
        [endif]
        [if exp="tf.sflg == 4"]
            #同居人
            いや悪かったって！[p]
            でもオレ食べてねーよ！？[p]
            だってここから出られないんだからさぁ……[l][r]
            食べれるわけないじゃ～ん[p]
            [SANc sDCnt=0 sDSiz=1 fDCnt=1 fDSiz=2]
        [endif]
        [if exp="tf.sflg == 3"]
            #同居人
            あれ、いや何でもない…………[p]
        [endif]
        [if exp="tf.sflg <=4 "]
            #同居人
            初見のはんのう[p]
        [endif]
    [endif]
    #
    [hide_ev_name]
    @jump storage="main.ks" target="*show_topics"
    [s]

*talk_d1_2
    [iscript]
        tf.is_waiting = false;
        f.searchCnt -= 1; 
        f.topicFlg[0][2] += 1;
        tf.sflg =f.topicFlg[0][2];
        clearTimeout(f.wait_timer);
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
            [SANc sDCnt=0 sDSiz=1 fDCnt=1 fDSiz=2]
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
        [if exp="tf.sflg > 5"]
            #同居人
            なーこれで何回目？[p]
            わかんないか。何でもない。[p]
        [endif]
        [if exp="tf.sflg == 4"]
            #同居人
            大丈夫だって！[p]
            そんな簡単に死んだりなんか、しないからさ！[p]
            あと、そんな心配するくらいなら俺にジュース奢ってよ[p]
            [SANc sDCnt=0 sDSiz=1 fDCnt=1 fDSiz=2]
        [endif]
        [if exp="tf.sflg == 3"]
            #同居人
            あれ、いや何でもない…………[p]
        [endif]
        [if exp="tf.sflg <=4 "]
            #同居人
            初見のはんのう[p]
        [endif]
    [endif]
    #
    [hide_ev_name]
    @jump storage="main.ks" target="*show_topics"
    [s]

*talk_d1_3
    [iscript]
        tf.is_waiting = false;
        f.searchCnt -= 1; 
        f.topicFlg[0][3] += 1;
        tf.sflg =f.topicFlg[0][3];
        clearTimeout(f.wait_timer);
    [endscript]
    [refresh_ui config_visible="false"]
    [show_ev_name title="海について1"]
    [if exp="f.reiya.san > 30"]
        [if exp="tf.sflg > 5"]
            #同居人
            なーこれで何回目？[p]
            わかんないか。何でもない。[p]
        [endif]
        [if exp="tf.sflg == 4"]
            #同居人
            大丈夫だって！[p]
            そんな簡単に死んだりなんか、しないからさ！[p]
            あと、そんな心配するくらいならジュース奢れよ～[p]
            [SANc sDCnt=0 sDSiz=1 fDCnt=1 fDSiz=2]
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
        [if exp="tf.sflg > 5"]
            #同居人
            なーこれで何回目？[p]
            わかんないか。何でもない。[p]
        [endif]
        [if exp="tf.sflg == 4"]
            #同居人
            大丈夫だって！[p]
            そんな簡単に死んだりなんか、しないからさ！[p]
            あと、そんな心配するくらいならジュース奢れよ～[p]
            [SANc sDCnt=0 sDSiz=1 fDCnt=1 fDSiz=2]
        [endif]
        [if exp="tf.sflg == 3"]
            #同居人
            あれ、いや何でもない…………[p]
        [endif]
        [if exp="tf.sflg <=4 "]
            #同居人
            初見のはんのう[p]
        [endif]
    [endif]
    #
    [hide_ev_name]
    @jump storage="main.ks" target="*show_topics"
    [s]


;==============================================================================
;       ===  END定義 ===
;==============================================================================

*end1
    ;end1「好い慕い」
    [refresh_ui config_visible="false"]
    [show_ev_name title="END1 好い慕い"]
    #
    好い慕い[p]
    #
    [hide_ev_name]
    [return]

*end2
    ;水死体

*end3
    ;すいしたい

*end4
    ;人魚姫

*end5
    ;水鏡
