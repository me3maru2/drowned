
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
晴天だ。雲一つない晴れ空。[p]
水垢が鱗のように見えるが、こいつが居る手前掃除もまともに出来ない[p]
いや、一人暮らしの男子大学生にこまめな掃除を期待しないでほしいが。[p][cm]
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
西日が差し込んでいる。まぶしい。[p]
帰りの子供の声が聞こえる気がする[p]
嵌め殺しの窓のため、ここからの換気はできない。[l][r]
普通に欠陥じゃないだろうか……？[p]
[cm]
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
すりガラスなせいで星空は見えない。[p]
あまり乗り出すと、浴槽に足が浸かってしまう[p][cm]
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
こいつが暑いとか言うからちょくちょく水を入れ替えている水槽代わりの浴槽。[p]
しかし同居人は半身浴程度にしか水に入っていない。水の中の方が涼しいだろうに[p][cm]
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
浴槽の半分くらいまで冷水が入っている[p]
本当は満水まで入れてやるつもりだったが満水まで入れるとこいつが水をバシャバシャ零してこっちに水がかかるから仕方ない。[p][cm]
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
浴槽の半分くらいまで入っている水が少し温くなってきた気がする。[p]
…………水を変えてやろう。[p][cm]
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
青色の鱗。足の代わりに体の半分を占めるのは魚の見た目のようなヒレ。[p]
水はしかし、こいつは淡水魚なのだろうか海水魚なのだろうか。[p]
人魚と言えば海のイメージだが…………淡水にこいつを入れててもいい物なのだろうか[p][cm]
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
爪が長い。あの爪でひっかかれたら蚯蚓腫れなんてかわいいけがじゃ済まないだろう[p]
頬にも鱗がある。目の色も、日本人らしい黒……なんて残っておらず。海のような青色だった。[p][cm]
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
暑いらしく。尾びれを揺らして水の流れを作っている。[p]
シャワーを使って水をかけてやった[p]
#同居人
っあー、すずし～！[p]
なぁずっとこれがいいんだけど～！[p]
#ヤナギ
水道代でうちが潰れます。[p][cm]
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
水が垂れていた。[p]
………蛇口をきつく締めなおした[p][cm]
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
今日は外に出る予定はない。[p]
なにより、わざわざ外出する気力がない。[p][cm]
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
扉の向こうから子供のこえが聞こえる。[l][r]
どうやら下校時間らしい[p]
扉が重たい。[p]
…………外には出られない[p][cm]
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
こんな夜に出かけようとするなんて…………[p]
そんな非行行為には走れない。[p][cm]
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
片方は彼がおいて行った方の傘だ。[p]
もう片方は、昔失くした…………[l][r]
あれ。いつの間に帰ってきていたのだろうか[p][cm]
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
郵便受けだ。[p]
どうやらチラシが入って………[l]…ああまた水道業者のマグネットが入っている。[p][cm]
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
………ピザの出前のチラシが入っていた[p][cm]
[else]
[rand_flavor day="1" room="1" place="5"]
[endif]
[return]

;  --- キッチン ---

*ev_d1_r2_p0
[iscript]
tf.isFirst = (f.searchFlg_day1[2][0] <= 1);
[endscript]
[event_rnd day="1" idx="7" prob="0.1"]
[if exp="tf.isFirst"]
    料理でもした方がいいか？[p]
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
鏡の中の自分は随分不気味だった[p][cm]
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
鏡が割れているように見えた。[p]
…………幻覚だといい。[p][cm]
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
洗濯ものが溜まっている。[p]
明日の天気は…………[p][cm]
[else]
[rand_flavor day="1" room="3" place="2"]
[endif]
[return]

*ev_d1_r3_p3
[iscript]
tf.isFirst = (f.searchFlg_day1[3][3] <= 1);
[endscript]
[if exp="tf.isFirst"]
#
水やりを忘れていた。[p]
#ヤナギ
…………これでよし。[p]
#
名前も良くわからない観葉植物に水をやった。[p]
[cm]
[else]
[rand_flavor day="1" room="3" place="3"]
[endif]
[return]

;  --- リビング1 ---

*ev_d1_r4_p0
[iscript]
tf.isFirst = (f.searchFlg_day1[4][0] <= 1);
[endscript]
[if exp="tf.isFirst"]
#
この椅子からテレビを見るのは少し無理のある角度だったな。と、この配置を決めてから思った。[p][cm]
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
さっきまで寝ていた場所。[p]
ベッドメイクでもしてみるか…………[p][cm]
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
寝るわけでもないのにベッドに寝そべったり座ったりするのはちょっと嫌だ。[p]
身体が今から寝るんだと勘違いして眠たくなる。[p][cm]
[else]
[rand_flavor day="1" room="6" place="1"]
[endif]
[return]

*ev_d1_r6_p2
; day1・寝室・ベッド（夜）→就寝イベント
[clearfix name="search_btn,move_btn"]
    [cm]
    [glink color="&f.currInfo.time+'_btn'" x=360 y=150 text="調べる"    storage="event.ks" target="*ev_d1_r6_p2_1"]
    [glink color="&f.currInfo.time+'_btn'" x=360 y=250 text="寝る" storage="event.ks" target="*ev_d1_r6_p2_2"]
    [s]
*ev_d1_r6_p2_1
[iscript]
tf.isFirst = (f.searchFlg_day1[6][2] <= 1);
[endscript]
[if exp="tf.isFirst"]
#ヤナギ
……寝ないのか？[p][cm]
#
[else]
    [rand_flavor day="1" room="6" place="2"]
[endif]
[return]
*ev_d1_r6_p2_2
#
今日を終わりますか？
    [glink color="&f.currInfo.time+'_btn'" x=360 y=150 text="終わる"    storage="event.ks" target="*ev_d1_r6_p2_2_1"]
    [glink color="&f.currInfo.time+'_btn'" x=360 y=250 text="まだ続ける" storage="event.ks" target="*ev_d1_r6_p2_2_2"]
    [s]
*ev_d1_r6_p2_2_1
[eval exp="f.last_day_Flg = true"]
[return]
*ev_d1_r6_p2_2_2
[eval exp="f.last_day_Flg = false"]
[return]

*ev_d1_r6_p3
[iscript]
tf.isFirst = (f.searchFlg_day1[6][3] <= 1);
[endscript]
[if exp="tf.isFirst"]
#
本棚だ。[p]
もう使わないだろうけれど一応取っておいている教科書が、名残のように並んでいる。[p][cm]
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
本棚だ。[l][r]
本と言っても多様で、借りた漫画が単独でそこに収まっている。[p]
近いうちに返さなければ。[p][cm]
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
この時間から読むのは後で後悔する気がする[p][cm]
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
写真の向こうで笑っている。[p]
楽しそうな笑顔だ。[p]
この笑顔がもう自分に向くことはないのだろうなと漠然と思う。[p][cm]
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
気に入った写真を入れている。今は高校時代に撮ったものだ[p]
珍しく映りこむものもなく、綺麗に撮れている[p][cm]
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
写真立てが倒れている。[p]
次は倒れないように、消しゴムで押さえて立てかけなおした。[p]
……割れたりして無くて良かった。[p][cm]
[else]
[rand_flavor day="1" room="6" place="8"]
[endif]
[return]
