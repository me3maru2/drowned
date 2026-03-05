
[cm]

@clearstack
@bg storage ="title_1.png" time=100
@wait time = 200

*start 

[button x=880 y=380 graphic="title/button.png" enterimg="title/button.png"  target="gamestart" keyfocus="1"]
[button x=880 y=450 graphic="title/button.png" enterimg="title/button.png" role="load" keyfocus="2"]
;[button x=135 y=410 graphic="title/button_cg.png" enterimg="title/button_cg2.png" storage="cg.ks" keyfocus="3"]
;[button x=135 y=500 graphic="title/button_replay.png" enterimg="title/button_replay2.png" storage="replay.ks" keyfocus="4"]
;[button x=135 y=590 graphic="title/button_config.png" enterimg="title/button_config2.png" role="sleepgame" storage="config.ks" keyfocus="5"]

[s]

*gamestart
;一番最初のシナリオファイルへジャンプする
@jump storage="scene01.ks"



