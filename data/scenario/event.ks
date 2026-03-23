
; 【構造】
; 初回（searchFlg == 1）→ 固定テキスト or 話題取得
; 2回目以降（searchFlg >= 2）→ rand_flavorでランダムフレーバー
; ======================================================


;
;  day1
;

;  --- 風呂 ---

*ev_d1_r0_p0
[iscript]
tf.isFirst = (f.searchFlg_day1[0][0] <= 1);
[endscript]
[if exp="tf.isFirst"]
#
窓（昼）初回テキスト。[p]
[else]
[rand_flavor day="1" room="0" place="0"]
[endif]
[return]

*ev_d1_r0_p1
[iscript]
tf.isFirst = (f.searchFlg_day1[0][1] <= 1);
[endscript]
[if exp="tf.isFirst"]
#
窓（夕）初回テキスト。[p]
[else]
[rand_flavor day="1" room="0" place="1"]
[endif]
[return]

*ev_d1_r0_p2
[iscript]
tf.isFirst = (f.searchFlg_day1[0][2] <= 1);
[endscript]
[if exp="tf.isFirst"]
#
窓（夜）初回テキスト。[p]
[else]
[rand_flavor day="1" room="0" place="2"]
[endif]
[return]

*ev_d1_r0_p3
[iscript]
tf.isFirst = (f.searchFlg_day1[0][3] <= 1);
[endscript]
[if exp="tf.isFirst"]
#
浴槽（昼）初回テキスト。[p]
[else]
[rand_flavor day="1" room="0" place="3"]
[endif]
[return]

*ev_d1_r0_p4
[iscript]
tf.isFirst = (f.searchFlg_day1[0][4] <= 1);
[endscript]
[if exp="tf.isFirst"]
#
浴槽（夕）初回テキスト。[p]
[else]
[rand_flavor day="1" room="0" place="4"]
[endif]
[return]

*ev_d1_r0_p5
[iscript]
tf.isFirst = (f.searchFlg_day1[0][5] <= 1);
[endscript]
[if exp="tf.isFirst"]
#
浴槽（夜）初回テキスト。[p]
[else]
[rand_flavor day="1" room="0" place="5"]
[endif]
[return]

*ev_d1_r0_p6
; 同居人（昼）→「調べる」選択時
[iscript]
tf.isFirst = (f.searchFlg_day1[0][6] <= 1);
[endscript]
[if exp="tf.isFirst"]
#
同居人（昼）初回テキスト。[p]
[else]
[rand_flavor day="1" room="0" place="6"]
[endif]
[return]

*ev_d1_r0_p7
; 同居人（夕）→「調べる」選択時
[iscript]
tf.isFirst = (f.searchFlg_day1[0][7] <= 1);
[endscript]
[if exp="tf.isFirst"]
#
同居人（夕）初回テキスト。[p]
[else]
[rand_flavor day="1" room="0" place="7"]
[endif]
[return]

*ev_d1_r0_p8
; 同居人（夜）→「調べる」選択時
[iscript]
tf.isFirst = (f.searchFlg_day1[0][8] <= 1);
[endscript]
[if exp="tf.isFirst"]
#
同居人（夜）初回テキスト。[p]
[else]
[rand_flavor day="1" room="0" place="8"]
[endif]
[return]

*ev_d1_r0_p9
[iscript]
tf.isFirst = (f.searchFlg_day1[0][9] <= 1);
[endscript]
[if exp="tf.isFirst"]
#
蛇口初回テキスト。[p]
[else]
[rand_flavor day="1" room="0" place="9"]
[endif]
[return]

;  --- 玄関 ---

*ev_d1_r1_p0
[iscript]
tf.isFirst = (f.searchFlg_day1[1][0] <= 1);
[endscript]
[if exp="tf.isFirst"]
#
扉（昼）初回テキスト。[p]
[else]
[rand_flavor day="1" room="1" place="0"]
[endif]
[return]

*ev_d1_r1_p1
[iscript]
tf.isFirst = (f.searchFlg_day1[1][1] <= 1);
[endscript]
[if exp="tf.isFirst"]
#
扉（夕）初回テキスト。[p]
[else]
[rand_flavor day="1" room="1" place="1"]
[endif]
[return]

*ev_d1_r1_p2
[iscript]
tf.isFirst = (f.searchFlg_day1[1][2] <= 1);
[endscript]
[if exp="tf.isFirst"]
#
扉（夜）初回テキスト。[p]
[else]
[rand_flavor day="1" room="1" place="2"]
[endif]
[return]

*ev_d1_r1_p3
[iscript]
tf.isFirst = (f.searchFlg_day1[1][3] <= 1);
[endscript]
[if exp="tf.isFirst"]
#
傘立て初回テキスト。[p]
[else]
[rand_flavor day="1" room="1" place="3"]
[endif]
[return]

*ev_d1_r1_p4
[iscript]
tf.isFirst = (f.searchFlg_day1[1][4] <= 1);
[endscript]
[if exp="tf.isFirst"]
#
ポスト（夕）初回テキスト。[p]
[else]
[rand_flavor day="1" room="1" place="4"]
[endif]
[return]

*ev_d1_r1_p5
[iscript]
tf.isFirst = (f.searchFlg_day1[1][5] <= 1);
[endscript]
[if exp="tf.isFirst"]
#
ポスト（夜）初回テキスト。[p]
[else]
[rand_flavor day="1" room="1" place="5"]
[endif]
[return]

;  --- キッチン ---

*ev_d1_r2_p0
[iscript]
tf.isFirst = (f.searchFlg_day1[2][0] <= 1);
[endscript]
[if exp="tf.isFirst"]
    [event_rnd day="1" idx="7" prob="0.1"]
[else]
    [rand_flavor day="1" room="2" place="0"]
[endif]
[return]

;  --- ランドリー ---

*ev_d1_r3_p0
[iscript]
tf.isFirst = (f.searchFlg_day1[3][0] <= 1);
[endscript]
[if exp="tf.isFirst"]
#
洗面台（昼）初回テキスト。[p]
[else]
[rand_flavor day="1" room="3" place="0"]
[endif]
[return]

*ev_d1_r3_p1
[iscript]
tf.isFirst = (f.searchFlg_day1[3][1] <= 1);
[endscript]
[if exp="tf.isFirst"]
#
洗面台（夕）初回テキスト。[p]
[else]
[rand_flavor day="1" room="3" place="1"]
[endif]
[return]

*ev_d1_r3_p2
[iscript]
tf.isFirst = (f.searchFlg_day1[3][2] <= 1);
[endscript]
[if exp="tf.isFirst"]
#
洗濯かご初回テキスト。[p]
[else]
[rand_flavor day="1" room="3" place="2"]
[endif]
[return]

;  --- リビング1 ---

*ev_d1_r4_p0
[iscript]
tf.isFirst = (f.searchFlg_day1[4][0] <= 1);
[endscript]
[if exp="tf.isFirst"]
#
ソファ初回テキスト。[p]
[else]
[rand_flavor day="1" room="4" place="0"]
[endif]
[return]

; --- リビング2 ---

*ev_d1_r5_p0
[iscript]
tf.isFirst = (f.searchFlg_day1[5][0] <= 1);
[endscript]
[if exp="tf.isFirst"]
    [event_rnd day="1" idx="5"]
[else]
    [rand_flavor day="1" room="5" place="0"]
[endif]
[return]

*ev_d1_r5_p1
[iscript]
tf.isFirst = (f.searchFlg_day1[5][1] <= 1);
[endscript]
[if exp="tf.isFirst"]
    [event_rnd day="1" idx="5"]
[else]
    [rand_flavor day="1" room="5" place="1"]
[endif]
[return]

*ev_d1_r5_p2
[iscript]
tf.isFirst = (f.searchFlg_day1[5][2] <= 1);
[endscript]
[if exp="tf.isFirst"]
    [event_rnd day="1" idx="5"]
[else]
    [rand_flavor day="1" room="5" place="2"]
[endif]
[return]

;  --- 寝室 ---

*ev_d1_r6_p0
[iscript]
tf.isFirst = (f.searchFlg_day1[6][0] <= 1);
[endscript]
[if exp="tf.isFirst"]
#
ベッド（昼）初回テキスト。[p]
[else]
[rand_flavor day="1" room="6" place="0"]
[endif]
[return]

*ev_d1_r6_p1
[iscript]
tf.isFirst = (f.searchFlg_day1[6][1] <= 1);
[endscript]
[if exp="tf.isFirst"]
#
ベッド（夕）初回テキスト。[p]
[else]
[rand_flavor day="1" room="6" place="1"]
[endif]
[return]

*ev_d1_r6_p2
; day1・寝室・ベッド（夜）→就寝イベント
[iscript]
tf.isFirst = (f.searchFlg_day1[6][2] <= 1);
[endscript]
[if exp="tf.isFirst"]
    [iscript]
tf.bedtime = (Math.random() < 0.8) ? 1 : 2;
[endscript]
    [if exp="tf.bedtime == 1"]
        [iscript]f.eventFlg[0][1] = 2;
[endscript]
        [call storage="main.ks" target="*ev_day1_1"]
    [else]
        [iscript]f.eventFlg[0][2] = 2;
[endscript]
        [call storage="main.ks" target="*ev_day1_2"]
    [endif]
[else]
    [rand_flavor day="1" room="6" place="2"]
[endif]
[return]

*ev_d1_r6_p3
[iscript]
tf.isFirst = (f.searchFlg_day1[6][3] <= 1);
[endscript]
[if exp="tf.isFirst"]
#
本棚（昼）初回テキスト。[p]
[else]
[rand_flavor day="1" room="6" place="3"]
[endif]
[return]

*ev_d1_r6_p4
[iscript]
tf.isFirst = (f.searchFlg_day1[6][4] <= 1);
[endscript]
[if exp="tf.isFirst"]
#
本棚（夕）初回テキスト。[p]
[else]
[rand_flavor day="1" room="6" place="4"]
[endif]
[return]

*ev_d1_r6_p5
[iscript]
tf.isFirst = (f.searchFlg_day1[6][5] <= 1);
[endscript]
[if exp="tf.isFirst"]
#
本棚（夜）初回テキスト。[p]
[else]
[rand_flavor day="1" room="6" place="5"]
[endif]
[return]

*ev_d1_r6_p6
[iscript]
tf.isFirst = (f.searchFlg_day1[6][6] <= 1);
[endscript]
[if exp="tf.isFirst"]
#
写真立て（昼）初回テキスト。[p]
[else]
[rand_flavor day="1" room="6" place="6"]
[endif]
[return]

*ev_d1_r6_p7
[iscript]
tf.isFirst = (f.searchFlg_day1[6][7] <= 1);
[endscript]
[if exp="tf.isFirst"]
#
写真立て（夕）初回テキスト。[p]
[else]
[rand_flavor day="1" room="6" place="7"]
[endif]
[return]

*ev_d1_r6_p8
[iscript]
tf.isFirst = (f.searchFlg_day1[6][8] <= 1);
[endscript]
[if exp="tf.isFirst"]
#
写真立て（夜）初回テキスト。[p]
[else]
[rand_flavor day="1" room="6" place="8"]
[endif]
[return]
