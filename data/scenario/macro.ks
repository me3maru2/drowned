; 探索回数のリセットマクロ
[macro name="sCntReset"]
    [iscript]
    // SAN値に応じて回数を計算
    if (f.reiya.san > 40) {
        f.searchCnt = 10;
    } else if (f.reiya.san > 30){
        f.searchCnt = 7;
    } else if (f.reiya.san > 20){
        f.searchCnt = 5;
    } else {
        f.searchCnt = 4;
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
f.searchFlg_day1 = [
    [0, 0, 0, 0],   // 0.風呂（蛇口、窓、浴槽、同居人）
    [0, 0, 0],      // 1.玄関（扉、傘立て、ポスト）
    [0],            // 2.キッチン（冷蔵庫）
    [0],            // 3.ランドリー
    [0],            // 4.リビング１
    [0],            // 5.リビング２
    [0]             // 6.寝室
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

[if exp="mp.config_visible == 'true' || mp.config_visible == true"]
    ;話題表示ボタン
    ;[button name="role_button" role="sleepgame" graphic="&'button/'+f.currInfo.time+'_phone.png'" enterimg="&'button/'+f.currInfo.time+'_phone2.png'" storage="topic.ks" clickse="sei_ge_bubble01.mp3" x="1190" y="100"]
  ; --- 3. その上に「day」の数値を置く ---
  ; f.day の中身を文字として表示
  [image layer="0" storage="&'day_'+f.currInfo.time+'.png'" x=980 y=10 width=300 visible="true"]
  [ptext layer="0" name="day_text" text="&f.currInfo.day" x=1135 y=12 size=70 color="#06222d" edge="#06222d"]
[endif]
[endmacro]


[macro name="refresh_room"]
  [cm]
  [clearfix name="move_btn,search_btn"]
  [freeimage layer="0"]

  ; 1. 背景変更 (例: room_0_noon.png)
  [bg storage="&'room_'+f.currInfo.room+'_'+f.currInfo.time+'.png'" time="500"]

  ; 2. 左右移動ボタン
  ; 左へ（roomが0なら6へ戻る）
  [iscript]
    tf.prev = (f.currInfo.room == 0) ? 6 : f.currInfo.room - 1;
    tf.next = (f.currInfo.room == 6) ? 0 : f.currInfo.room + 1;
  [endscript]
  [button name="move_btn" graphic="&'button/'+f.currInfo.time+'_left.png'" enterimg="&'button/'+f.currInfo.time+'_left2.png'" x=0 y=330 target="*change_room" exp="f.currInfo.room = tf.prev"]
  [button name="move_btn" graphic="&'button/'+f.currInfo.time+'_right.png'" enterimg="&'button/'+f.currInfo.time+'_right2.png'" x=1220 y=330 target="*change_room" exp="f.currInfo.room = tf.next"]

  ; 3. 探索ポイントの表示（roomごとに分岐）
  [call storage="search.ks" target="&'*room_points_'+f.currInfo.room"]

  ; UI（ボタン系）の再表示
  [refresh_ui config_visible="true"]
[endmacro]
