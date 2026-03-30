; 探索回数のリセットマクロ
[macro name="sCntReset"]
    [iscript]
    // SAN値に応じて回数を計算
    if (f.reiya.san > 40) {
        f.searchCnt += 30;
    } else if (f.reiya.san > 30){
        f.searchCnt += 21;
    } else if (f.reiya.san > 20){
        f.searchCnt += 15;
    } else {
        f.searchCnt += 12;
    }
    [endscript]
[endmacro]

; 霊也SANチェック
[macro name="SANc"]
    [eval exp="mp.sDCnt = mp.sDCnt || 0, mp.sDSiz = mp.sDSiz || 1"]
    [eval exp="mp.fDCnt = mp.fDCnt || 1, mp.fDSiz = mp.fDSiz || 3"]
    [if exp="f.reiya.san >= Math.floor(Math.random()*100)+1"]
        [roll cnt=mp.sDCnt siz=mp.sDSiz]
    [else]
        [roll cnt=mp.fDCnt siz=mp.fDSiz]
    [endif]
        [eval exp="f.reiya.san -= f.dice_result"]
[endmacro]

; ダイスロール
[macro name="roll"]
    [iscript]
        var x = parseInt(mp.cnt);
        var y = parseInt(mp.siz);
        var total = 0;
        for (var i = 0; i < x; i++) {
            total += Math.floor(Math.random() * y) + 1;
        }
        f.dice_result = total;
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
    f.rootFlg=[0,0,0,0,0];  //end順
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
        [0, 0, 0, 0],                      // 3.ランドリー（洗面台昼,洗面台夕,洗濯かご,観葉植物）
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
        [0, 0, 1, 0, 0, 0, 0, 0, 0, 0], // day1
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
  [freeimage layer="0"]
  [clearfix name="role_button"]
  [clearfix name="vol_btn"]
  [freeimage layer="2"]
    ; オートボタン
    [button name="role_button" role="auto" graphic="&'button/'+f.currInfo.time+'_auto.png'" enterimg="&'button/'+f.currInfo.time+'_auto2.png'" clickse="sei_ge_bubble01.mp3" x="1095" y="480"]
    ; スキップボタン
    [button name="role_button" role="skip" graphic="&'button/'+f.currInfo.time+'_skip.png'" enterimg="&'button/'+f.currInfo.time+'_skip2.png'" clickse="sei_ge_bubble01.mp3" x="1180" y="480"]
    ;メッセージウィンドウ非表示ボタン
    ;[button name="role_button" role="window" graphic="&'button/'+f.currInfo.time+'_close.png'" enterimg="&'button/'+f.currInfo.time+'_close2.png'" clickse="sei_ge_bubble01.mp3" x="1180" y="480"]

    ;セーブボタン
    [button name="role_button" role="save" graphic="&'button/'+f.currInfo.time+'_save.png'" enterimg="&'button/'+f.currInfo.time+'_save2.png'" clickse="sei_ge_bubble01.mp3" x="10" y="20"]
    ;ロードボタン
    [button name="role_button" role="load" graphic="&'button/'+f.currInfo.time+'_load.png'" enterimg="&'button/'+f.currInfo.time+'_load2.png'" clickse="sei_ge_bubble01.mp3" x="10" y="105"]
    ;バックログボタン
    [button name="role_button" role="backlog" graphic="&'button/'+f.currInfo.time+'_log.png'" enterimg="&'button/'+f.currInfo.time+'_log2.png'" clickse="sei_ge_bubble01.mp3" x="10" y="190"]
    ;volボタン
    [refresh_vol_btn x="10" y="275"]

    [iscript]
        tf.dayfile = 'day_' + f.currInfo.time + '.png';
    [endscript]
    [if exp="mp.config_visible == 'true' || mp.config_visible == true"]
        [image layer="0" storage="&tf.dayfile" x=980 y=10 width=300 visible="true"]
        [ptext layer="0" name="day_text" text="&f.currInfo.day" x=1135 y=12 size=70 color="#06222d" edge="#06222d"]
    [endif]
[endmacro]

[macro name="refresh_room"]
  [clearfix name="search_btn"]
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
  [button name="move_btn" graphic="&'button/'+f.currInfo.time+'_left.png'" enterimg="&'button/'+f.currInfo.time+'_left2.png'" zindex="999" fix="true" x=0 y=380 storage="main.ks" target="*change_room" exp="f.currInfo.room = tf.prev"]
  [button name="move_btn" graphic="&'button/'+f.currInfo.time+'_right.png'" enterimg="&'button/'+f.currInfo.time+'_right2.png'" zindex="999" fix="true" x=1220 y=380 storage="main.ks" target="*change_room" exp="f.currInfo.room = tf.next"]
  ; 探索ポイントの表示（roomごとに分岐）
  [iscript]
    tf.rpTarget = '*rp_d' + f.currInfo.day + '_r' + f.currInfo.room;
  [endscript]
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

    var pool = sf.texts[day][sanKey][room][place];

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
        [refresh_ui config_visible="false"]
        [call storage="main.ks" target="&tf.eventTarget"]
        [refresh_ui config_visible="true"]
    [endif]
[endmacro]

; イベント名表示マクロ
[macro name="show_ev_name"]
    [layopt layer="0" visible="true"]
    [iscript]
    tf.storage = "ev_bg_"+f.currInfo.time+".png";
    if(f.currInfo.time == 'noon'){
        tf.color= "0x337686";
    }else if (f.currInfo.time == 'evening') {
        tf.color= "0x06222D";
    }else{
        tf.color= "0xB5C7C8";
    } 
    [endscript]
    [free name="ev_parts" layer="0"]
    [image name="ev_parts" layer="0" storage=&tf.storage x=930 y=10 visible=true zindex=998]
    [ptext name="ev_parts" layer="0" text=%title x=930 y=32 size=26 color=&tf.color width=350 align="center" zindex=999 opacity=255 edge=&tf.color]
[endmacro]

; 消去マクロ
[macro name="hide_ev_name"]
[free name="ev_parts" layer="0"]
[endmacro]

;lastday用
[macro name="sleepORnextday"]
    [glink  color="noon_btn"  storage="macro.ks"  x="200"  y="270"  text="次の日へ"  target="*sleepORnextday_1"   clickse="sei_ge_bubble01.mp3"]
    [glink  color="noon_btn"  storage="macro.ks"  x="200"  y="370"  text="今朝から"  target="*sleepORnextday_2"   clickse="sei_ge_bubble01.mp3"]
    [s]
    *sleepORnextday_1
    [cm]
    [iscript]
        tf.lastdayFlg = true;
    [endscript]
    @jump target="*sleepORnextdayelse"
    *sleepORnextday_2
    [iscript]
        f.currInfo.day -= 1;
        f.currInfo.room = 6;
        tf.lastdayFlg = false;
    [endscript]
    [cm]
    *sleepORnextdayelse
    [cm]
[endmacro]

;bmg表示、再生
[macro name="play_bgm_title"]
    [stopbgm fadeout="1000"]
    [playbgm time="3000" storage="&mp.storage" loop="true"]
    [free layer="2" name="bgm_cutin" wait="false"]
    [iscript]
    if(f.currInfo.time == 'noon'){
        tf.edge ='#B5C7C8';
    }else if(f.currInfo.time == 'evening'){
        tf.edge ='#FFA17E';
    }else{
        tf.edge ='#70C2C0';
    }
    [endscript]
    [ptext name="bgm_cutin" layer="2" text="&'♪ '+mp.title" x="90" y="20" size="20" color="0x06222D" edge="&tf.edge" time="0"]
    [layopt layer="2" visible="true"]

    [anim name="bgm_cutin" left="+=20" opacity="255" time="500"]
    
    [iscript]
    setTimeout(function(){
        TYRANO.kag.ftag.startTag("anim", {
            name: "bgm_cutin",
            opacity: "0",
            time: "1000"
        });
        // アニメーションが終わる頃にfreeを実行
        setTimeout(function(){
            TYRANO.kag.ftag.startTag("free", {
                layer: "2",
                name: "bgm_cutin",
                wait: "false"
            });
        }, 1100);
    }, 3000);
    [endscript]
[endmacro]

; スキップ開始時のエフェクト（例：画面を少し暗くしてノイズを出す）
[macro name="start_skip_effect"]
    ; 既に出ている場合は二重に出さないように判定を入れると安全
    [if exp="tf.skip_effect_active != true"]
        [eval exp="tf.skip_effect_active = true"]
        ; ここに演出を書く（例：レイヤー0を半透明にする、フィルターをかける等）
        [kanim name="message0" keyframe="skip_loop" time="500"]
    [endif]
[endmacro]

; スキップ停止時のエフェクト解除
[macro name="stop_skip_effect"]
    [eval exp="tf.skip_effect_active = false"]
    ; 演出を止める
    [stop_kanim name="message0"]
[endmacro]

[macro name="enable_click_effect"]
    [iscript]
    var event_layer = $(".tyrano_base");
    event_layer.off("click.effect");

    event_layer.on("click.effect", function(e) {
        // --- 1. 座標の変換処理 ---
        // ゲーム画面の拡大率を取得
        var scale = TYRANO.kag.tmp.base_scale || 1;
        
        // 画面の左上端からの距離を取得
        var offset = event_layer.offset();
        
        // ブラウザの座標から、拡大率を考慮したゲーム内座標に変換
        var x = (e.pageX - offset.left) / scale;
        var y = (e.pageY - offset.top) / scale;

        // --- 2. 中心点の調整 ---
        // 画像サイズ 60x60 の半分（30）を引いて中心をクリック位置に合わせる
        var final_x = x - 30;
        var final_y = y - 30;

        var storage = "click_effect.png";
        var name = "click_anim_" + new Date().getTime();
        
        TYRANO.kag.ftag.startTag("image", {
            layer: "0",
            page: "fore",
            storage: storage,
            x: Math.floor(final_x),
            y: Math.floor(final_y),
            name: name,
            visible: "true",
            zindex: "9999"
        });

        setTimeout(function() {
            $("." + name).fadeOut(300, function() {
                $(this).remove();
            });
        }, 200);
    });
    [endscript]
[endmacro]

[macro name="disable_click_effect"]
    [iscript]
        $(".tyrano_base").off("click.effect");
    [endscript]
[endmacro]

[macro name="rebuild_tf_vars"]
    [iscript]
    tf.roomname = ['bath','foyer','kitchen','laundry','living1','living2','room'];
    
    if (f.currInfo) {
        tf.bgfile = f.currInfo.time + '_' + tf.roomname[f.currInfo.room] + '.png';
    }
    [endscript]
[endmacro]

[return]