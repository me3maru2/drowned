

*start



[cm]
[clearfix]
[freeimage layer="0"]
[freeimage layer="1"]
[freeimage layer="2"]
[layopt layer="message0" visible=false]
[hidemenubutton]
[stopbgm]
[stopse]
[refresh_vol_btn x="10" y="590"]
@bg storage ="title_1.png" time=100
[mask_off]
[layopt layer="0" visible="true"]
[ptext layer="0" text="Ver demo.3.29.18:28" x=10 y=680 size=30 color="#BB2626" edge="#BB2626" time="1200"]
@playbgm storage=HMB.mp3 loop=true
[image layer="0" storage="logo.png" x=770 y=150 width=400 visible="true" time="1200"]
[button name="my_btn" x=880 y=380 graphic="title/button_start.png" enterimg="title/button_start2.png" target="gamestart" keyfocus="1" clickse="sei_ge_mizu_dobon01.mp3" enterse="chapon2.mp3"]
[button name="my_btn" x=885 y=450 graphic="title/button_load.png" enterimg="title/button_load2.png" role="load" keyfocus="2" clickse="sei_ge_bubble01.mp3" enterse="chapon2.mp3"]
[layopt layer="fix" visible="false"]
[anim name="my_btn" opacity=0 time=0]
[layopt layer="fix" visible="true"]
[anim name="my_btn" opacity=255 time=2000]
[s]

*gamestart
;一番最初のシナリオファイルへジャンプする
[cm]
[clearfix]
[freeimage layer="0"]
[freeimage layer="1"]
[freeimage layer="2"]
[free layer="0" name="chara_name_area"]
@jump storage="main.ks"
