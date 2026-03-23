; 探索回数のリセットマクロ
[macro name="sCntReset"]
    [iscript]
    // SAN値に応じて回数を計算
    if (f.reiya.san > 40) {
        f.searchCnt = 30;
    } else if (f.reiya.san > 30){
        f.searchCnt = 21;
    } else if (f.reiya.san > 20){
        f.searchCnt = 15;
    } else {
        f.searchCnt = 12;
    }
    [endscript]
[endmacro]

;部屋の探索可否のフラグ変更
[macro name="sFlgedit"]
[iscript]
// 引数で受け取った部屋と場所のフラグを1（探索済）にする
var day  = f.currInfo.day;
var room = f.currInfo.room;
var place = mp.place;
switch(day){
    case 1:
        f.searchFlg_day1[room][place] += 1;
        break;
    case 2:
        f.searchFlg_day2[room][place] += 1;
        break;
    case 3:
        f.searchFlg_day3[room][place] += 1;
        break;
    default:
        break;
}
[endscript]
[endmacro]


;変数初期化
[macro name="init_var"]
[iscript]
f.currInfo={day:1,time:'noon',room:0};
f.eventFlg=[//day1
            [1,1,1,1,1,1,0,1],          //回想1,就寝1,就寝2,空腹1,電話1,ニュース1,調理1,冷蔵庫1
            //day2
            [0,0,0,0,0,0,0,0,0,0,0,0],  //回想2,回想3,就寝3,就寝4,空腹2,空腹3,電話2,セイレーン,ニュース2,調理2,夕立,冷蔵庫2
            //day3
            [0,0,0,0,0,0,0,0]           //回想4,就寝5,就寝6,空腹4,空腹5,空腹6,ニュース3,冷蔵庫3
            ];
f.searchFlg_day1 = [
    [0, 0, 0, 0, 0, 0, 0, 0, 0, 0], // 0.風呂（窓昼,窓夕,窓夜,浴槽昼,浴槽夕,浴槽夜,同居人昼,同居人夕,同居人夜,蛇口）
    [0, 0, 0, 0, 0, 0],             // 1.玄関（扉昼,扉夕,扉夜,傘立て,ポスト夕,ポスト夜）
    [0],                            // 2.キッチン（冷蔵庫）
    [0, 0, 0],                      // 3.ランドリー（洗面台昼,洗面台夕,洗濯かご）
    [0],                            // 4.リビング１（ソファ）
    [0, 0, 0],                      // 5.リビング２（TV昼,TV夕,TV夜）
    [0, 0, 0, 0, 0, 0, 0, 0, 0]    // 6.寝室（ベッド昼,ベッド夕,ベッド夜,本棚昼,本棚夕,本棚夜,写真立て昼,写真立て夕,写真立て夜）
];
f.searchFlg_day2 = [
    [0, 0, 0, 0],   // 0.風呂（蛇口、窓、浴槽、同居人）
    [0, 0, 0],      // 1.玄関（扉、傘立て、ポスト）
    [0],            // 2.キッチン（冷蔵庫）
    [0],            // 3.ランドリー
    [0],            // 4.リビング１
    [0],            // 5.リビング２
    [0]             // 6.寝室
];
f.searchFlg_day3 = [
    [0, 0, 0, 0],   // 0.風呂（蛇口、窓、浴槽、同居人）
    [0, 0, 0],      // 1.玄関（扉、傘立て、ポスト）
    [0],            // 2.キッチン（冷蔵庫）
    [0],            // 3.ランドリー
    [0],            // 4.リビング１
    [0],            // 5.リビング２
    [0]             // 6.寝室
];
// 話題フラグ（0:未取得, 1:取得済）
f.topicFlg = [
    [0, 0, 0, 0, 0, 0, 0, 0, 0, 0], // day1
    [0],                            // day2
    [0]                             // day3
];
//霊也初期値
f.reiya={san:45,memory:0};
//新二
f.shinji={san:60,lv:1};
//探索回数
f.searchCnt=0;
[endscript]
[endmacro]


[macro name="refresh_ui"]
  ; --- 1. 古いUIを一旦掃除 ---
  [freeimage layer="0"]
  [clearfix]
  ; --- 2. 土台となるUI画像を「ぺたっ」と貼る ---
    ; オートボタン
    [button name="role_button" role="auto" graphic="&'button/'+f.currInfo.time+'_auto.png'" enterimg="&'button/'+f.currInfo.time+'_auto2.png'" clickse="sei_ge_bubble01.mp3" x="1010" y="480"]
    ; スキップボタン
    [button name="role_button" role="skip" graphic="&'button/'+f.currInfo.time+'_skip.png'" enterimg="&'button/'+f.currInfo.time+'_skip2.png'" clickse="sei_ge_bubble01.mp3" x="1095" y="480"]
    ;メッセージウィンドウ非表示ボタン
    [button name="role_button" role="window" graphic="&'button/'+f.currInfo.time+'_close.png'" enterimg="&'button/'+f.currInfo.time+'_close2.png'" clickse="sei_ge_bubble01.mp3" x="1180" y="480"]

    ;セーブボタン
    [button name="role_button" role="save" graphic="&'button/'+f.currInfo.time+'_save.png'" enterimg="&'button/'+f.currInfo.time+'_save2.png'" clickse="sei_ge_bubble01.mp3" x="10" y="20"]
    ;ロードボタン
    [button name="role_button" role="load" graphic="&'button/'+f.currInfo.time+'_load.png'" enterimg="&'button/'+f.currInfo.time+'_load2.png'" clickse="sei_ge_bubble01.mp3" x="10" y="105"]
    ;バックログボタン
    [button name="role_button" role="backlog" graphic="&'button/'+f.currInfo.time+'_log.png'" enterimg="&'button/'+f.currInfo.time+'_log2.png'" clickse="sei_ge_bubble01.mp3" x="10" y="190"]
    ;コンフィグボタン
    [button name="role_button" role="sleepgame" graphic="&'button/'+f.currInfo.time+'_config.png'" enterimg="&'button/'+f.currInfo.time+'_config2.png'" storage="config.ks" clickse="sei_ge_bubble01.mp3" x="10" y="275"]

  ; --- 3. その上に「day」の数値を置く ---
  ; f.day の中身を文字として表示
    [iscript]
    tf.dayfile = 'day_' + f.currInfo.time + '.png';
    [endscript]
    [if exp="mp.config_visible == 'true' || mp.config_visible == true"]
    [image layer="0" storage="&tf.dayfile" x=980 y=10 width=300 visible="true"]
  [ptext layer="0" name="day_text" text="&f.currInfo.day" x=1135 y=12 size=70 color="#06222d" edge="#06222d"]
[endif]
[endmacro]


[macro name="refresh_room"]
  [cm]
  [clearfix name="move_btn,search_btn"]
  [freeimage layer="0"]

  ; 背景変更 (例: room_noon.png)
  [iscript]
  tf.roomname = ['bath','foyer','kitchen','laundry','living1','living2','room'];
  [endscript]
  [iscript]
  tf.bgfile = f.currInfo.time + '_' + tf.roomname[f.currInfo.room] + '.png';
  [endscript]
  [bg storage="&tf.bgfile" time="500" wait="false"]

  ; 左右移動ボタン
  [iscript]
    tf.prev = (f.currInfo.room == 0) ? 6 : f.currInfo.room - 1;
    tf.next = (f.currInfo.room == 6) ? 0 : f.currInfo.room + 1;
  [endscript]
  [button name="move_btn" graphic="&'button/'+f.currInfo.time+'_left.png'" enterimg="&'button/'+f.currInfo.time+'_left2.png'" x=0 y=380 storage="macro.ks" target="*change_room" exp="f.currInfo.room = tf.prev"]
  [button name="move_btn" graphic="&'button/'+f.currInfo.time+'_right.png'" enterimg="&'button/'+f.currInfo.time+'_right2.png'" x=1220 y=380 storage="macro.ks" target="*change_room" exp="f.currInfo.room = tf.next"]

  ; 探索ポイントの表示（roomごとに分岐）
  [if exp="f.currInfo.day == 1"]
    [event_rnd day="1" idx="4" prob="0.00504"]
  [endif]
  [iscript]
    tf._t = f.currInfo.time;
    tf.rpTarget = '*rp_d' + f.currInfo.day + '_r' + f.currInfo.room;
  [endscript]
  [call storage="macro.ks" target="&tf.rpTarget"]

  ; UI（ボタン系）の再表示
  [refresh_ui config_visible="true"]
[endmacro]



[macro name="rand_flavor"]
[iscript]
var sanKey;
if (f.reiya.san > 30) {
    sanKey = "high";
} else if (f.reiya.san > 20) {
    sanKey = "mid";
} else {
    sanKey = "low";
}

var day   = "day" + mp.day;
var room  = parseInt(mp.room);
var place = parseInt(mp.place);

var pool = tf.texts[day][sanKey][room][place];

if (!pool || pool.length === 0) {
    tf.flavorText = "";
} else {
    var idx = Math.floor(Math.random() * pool.length);
    if (pool[idx] === tf.lastFlavor && pool.length > 1) {
        idx = Math.floor(Math.random() * pool.length);
    }
    tf.lastFlavor = pool[idx];
    tf.flavorText = pool[idx];
}
[endscript]
[if exp="tf.flavorText != ''"]
[emb exp="tf.flavorText"]
[p]
[cm]
[endif]
[endmacro]



[macro name="event_rnd"]
[iscript]
var day  = parseInt(mp.day) - 1;
var idx  = parseInt(mp.idx);
var prob = mp.prob ? parseFloat(mp.prob) : 1;
tf.doEvent = (f.eventFlg[day][idx] == 1 && Math.random() < prob);
tf.eventTarget = '*ev_day' + mp.day + '_' + mp.idx;
[endscript]
[if exp="tf.doEvent"]
    [iscript]
        f.eventFlg[parseInt(mp.day)-1][parseInt(mp.idx)] = 2;
    [endscript]
    [call storage="main.ks" target="&tf.eventTarget"]
[endif]
[endmacro]


[macro name="next_time"]
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
[endmacro]

[return]

*talk_or_search
[clearfix name="search_btn,move_btn"]
[glink color="&f.currInfo.time+'_btn'" x=360 y=150 text="調べる"    storage="macro.ks" target="*do_search"  clickse="sei_ge_bubble01.mp3"]
[glink color="&f.currInfo.time+'_btn'" x=360 y=250 text="話しかける" storage="macro.ks" target="*do_talk"   clickse="sei_ge_bubble01.mp3"]
[s]

*do_talk
[clearfix name="search_btn,move_btn"]
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
#
……。[l][r]
[refresh_room]
[s]
[else]
[call storage="main.ks" target="*show_topics"]
[s]
[endif]
[s]


; ======================================================
; 探索ロジック
; ======================================================

*change_room
[refresh_room]
[s]

*do_search
[iscript]
tf.can_action = (f.searchCnt >= tf.cost);
tf.evTarget = '*ev_d' + f.currInfo.day + '_r' + f.currInfo.room + '_p' + tf.point;
[endscript]

[if exp="tf.can_action == true"]
    [eval exp="f.searchCnt -= tf.cost"]
    [sFlgedit place="&tf.point"]
    [layopt layer="message0" visible="true"]
    ; --- テキスト表示の実行 ---
    [call storage="event.ks" target="&tf.evTarget"]
    
    ; --- 探索後の判定 ---
    [if exp="f.searchCnt <= 0"]
        ; 回数が切れたら強制終了
        @jump storage="macro.ks" target="*phase_end"
    [else]
        ; まだ回数があるなら、画面を更新して「停止」する
        ; これにより、ボタンが再び押せるようになります
        [cm]
        [refresh_room]
        [layopt layer=message0 visible=false]
        [s] 
    [endif]
[else]
    …………疲れたな[l][r]
    @jump storage="macro.ks" target="*phase_end"
[endif]


*phase_end
[mask time=1000]
[freeimage layer="0"]
[clearfix]
@jump storage="main.ks" target="*next_phase"

; ======================================================
; 探索ポイントボタン（ラベル形式・callで呼ぶ）
; ======================================================

*rp_d1_r0
; day1・風呂
[if exp="tf._t == 'noon'"]
[button name="search_btn" graphic="button/noon_search.png"    x=400 y=200 storage="macro.ks" target="*do_search"      exp="tf.point=0, tf.cost=3" clickse="sei_ge_bubble01.mp3"]
[button name="search_btn" graphic="button/noon_search.png"    x=500 y=200 storage="macro.ks" target="*do_search"      exp="tf.point=3, tf.cost=3" clickse="sei_ge_bubble01.mp3"]
[button name="search_btn" graphic="button/noon_search.png"    x=300 y=200 storage="macro.ks" target="*talk_or_search"  exp="tf.point=6, tf.cost=3" clickse="sei_ge_bubble01.mp3"]
[endif]
[if exp="tf._t == 'evening'"]
[button name="search_btn" graphic="button/evening_search.png" x=600 y=200 storage="macro.ks" target="*do_search"      exp="tf.point=1, tf.cost=3" clickse="sei_ge_bubble01.mp3"]
[button name="search_btn" graphic="button/evening_search.png" x=500 y=200 storage="macro.ks" target="*do_search"      exp="tf.point=4, tf.cost=3" clickse="sei_ge_bubble01.mp3"]
[button name="search_btn" graphic="button/evening_search.png" x=400 y=200 storage="macro.ks" target="*talk_or_search"  exp="tf.point=7, tf.cost=3" clickse="sei_ge_bubble01.mp3"]
[endif]
[if exp="tf._t == 'night'"]
[button name="search_btn" graphic="button/night_search.png"   x=600 y=200 storage="macro.ks" target="*do_search"      exp="tf.point=2, tf.cost=3" clickse="sei_ge_bubble01.mp3"]
[button name="search_btn" graphic="button/night_search.png"   x=500 y=200 storage="macro.ks" target="*do_search"      exp="tf.point=5, tf.cost=3" clickse="sei_ge_bubble01.mp3"]
[button name="search_btn" graphic="button/night_search.png"   x=400 y=200 storage="macro.ks" target="*talk_or_search"  exp="tf.point=8, tf.cost=3" clickse="sei_ge_bubble01.mp3"]
[endif]
[button name="search_btn" graphic="&'button/'+tf._t+'_search.png'" x=400 y=300 storage="macro.ks" target="*do_search" exp="tf.point=9, tf.cost=3" clickse="sei_ge_bubble01.mp3"]
[return]

*rp_d1_r1
; day1・玄関
[if exp="tf._t == 'noon'"]
[button name="search_btn" graphic="button/noon_search.png"    x=400 y=200 storage="macro.ks" target="*do_search" exp="tf.point=0, tf.cost=3" clickse="sei_ge_bubble01.mp3"]
[endif]
[if exp="tf._t == 'evening'"]
[button name="search_btn" graphic="button/evening_search.png" x=600 y=200 storage="macro.ks" target="*do_search" exp="tf.point=1, tf.cost=3" clickse="sei_ge_bubble01.mp3"]
[button name="search_btn" graphic="button/evening_search.png" x=400 y=200 storage="macro.ks" target="*do_search" exp="tf.point=4, tf.cost=3" clickse="sei_ge_bubble01.mp3"]
[endif]
[if exp="tf._t == 'night'"]
[button name="search_btn" graphic="button/night_search.png"   x=600 y=200 storage="macro.ks" target="*do_search" exp="tf.point=2, tf.cost=3" clickse="sei_ge_bubble01.mp3"]
[button name="search_btn" graphic="button/night_search.png"   x=400 y=200 storage="macro.ks" target="*do_search" exp="tf.point=5, tf.cost=3" clickse="sei_ge_bubble01.mp3"]
[endif]
[button name="search_btn" graphic="&'button/'+tf._t+'_search.png'" x=400 y=300 storage="macro.ks" target="*do_search" exp="tf.point=3, tf.cost=3" clickse="sei_ge_bubble01.mp3"]
[return]

*rp_d1_r2
; day1・キッチン
[iscript]
tf.canCook = (tf._t == 'noon' && f.eventFlg[0][0] == 2);
[endscript]
[if exp="tf.canCook"]
[event_rnd day="1" idx="6"]
[endif]
[button name="search_btn" graphic="&'button/'+tf._t+'_search.png'" x=400 y=300 storage="macro.ks" target="*do_search" exp="tf.point=0, tf.cost=3" clickse="sei_ge_bubble01.mp3"]
[event_rnd day="1" idx="0"]
[return]

*rp_d1_r3
; day1・ランドリー
[if exp="tf._t == 'noon'"]
[button name="search_btn" graphic="button/noon_search.png"    x=400 y=200 storage="macro.ks" target="*do_search" exp="tf.point=0, tf.cost=3" clickse="sei_ge_bubble01.mp3"]
[endif]
[if exp="tf._t == 'evening'"]
[button name="search_btn" graphic="button/evening_search.png" x=600 y=200 storage="macro.ks" target="*do_search" exp="tf.point=1, tf.cost=3" clickse="sei_ge_bubble01.mp3"]
[endif]
[button name="search_btn" graphic="&'button/'+tf._t+'_search.png'" x=400 y=300 storage="macro.ks" target="*do_search" exp="tf.point=2, tf.cost=3" clickse="sei_ge_bubble01.mp3"]
[return]

*rp_d1_r4
; day1・リビング1
[button name="search_btn" graphic="&'button/'+tf._t+'_search.png'" x=600 y=400 storage="macro.ks" target="*do_search" exp="tf.point=0, tf.cost=2" clickse="sei_ge_bubble01.mp3"]
[return]

*rp_d1_r5
; day1・リビング2
[if exp="tf._t == 'noon'"]
[button name="search_btn" graphic="button/noon_search.png"    x=600 y=200 storage="macro.ks" target="*do_search" exp="tf.point=0, tf.cost=3" clickse="sei_ge_bubble01.mp3"]
[endif]
[if exp="tf._t == 'evening'"]
[button name="search_btn" graphic="button/evening_search.png" x=600 y=200 storage="macro.ks" target="*do_search" exp="tf.point=1, tf.cost=3" clickse="sei_ge_bubble01.mp3"]
[endif]
[if exp="tf._t == 'night'"]
[button name="search_btn" graphic="button/night_search.png"   x=600 y=200 storage="macro.ks" target="*do_search" exp="tf.point=2, tf.cost=3" clickse="sei_ge_bubble01.mp3"]
[endif]
[return]

*rp_d1_r6
; day1・寝室
[if exp="tf._t == 'noon'"]
[button name="search_btn" graphic="button/noon_search.png"    x=1060 y=370 storage="macro.ks" target="*do_search" exp="tf.point=0, tf.cost=3" clickse="sei_ge_bubble01.mp3"]
[button name="search_btn" graphic="button/noon_search.png"    x=125  y=170 storage="macro.ks" target="*do_search" exp="tf.point=3, tf.cost=3" clickse="sei_ge_bubble01.mp3"]
[button name="search_btn" graphic="button/noon_search.png"    x=95   y=410 storage="macro.ks" target="*do_search" exp="tf.point=6, tf.cost=3" clickse="sei_ge_bubble01.mp3"]
[endif]
[if exp="tf._t == 'evening'"]
[button name="search_btn" graphic="button/evening_search.png" x=1060 y=370 storage="macro.ks" target="*do_search" exp="tf.point=1, tf.cost=3" clickse="sei_ge_bubble01.mp3"]
[button name="search_btn" graphic="button/evening_search.png" x=125  y=170 storage="macro.ks" target="*do_search" exp="tf.point=4, tf.cost=3" clickse="sei_ge_bubble01.mp3"]
[button name="search_btn" graphic="button/evening_search.png" x=95   y=410 storage="macro.ks" target="*do_search" exp="tf.point=7, tf.cost=3" clickse="sei_ge_bubble01.mp3"]
[endif]
[if exp="tf._t == 'night'"]
[button name="search_btn" graphic="button/night_search.png"   x=1060 y=370 storage="macro.ks" target="*do_search" exp="tf.point=2, tf.cost=3" clickse="sei_ge_bubble01.mp3"]
[button name="search_btn" graphic="button/night_search.png"   x=125  y=170 storage="macro.ks" target="*do_search" exp="tf.point=5, tf.cost=3" clickse="sei_ge_bubble01.mp3"]
[button name="search_btn" graphic="button/night_search.png"   x=95   y=410 storage="macro.ks" target="*do_search" exp="tf.point=8, tf.cost=3" clickse="sei_ge_bubble01.mp3"]
[endif]
[return]
