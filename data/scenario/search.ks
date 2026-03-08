
; 部屋移動時のエントリーポイント
*change_room
[refresh_room]
[s]

; --- 各部屋の探索ポイント定義 ---
*room_points_0
  ; 風呂の探索箇所
  [button name="search_btn" graphic="point_closet.png" x=400 y=200 target="*do_search" exp="tf.point=0, tf.cost=3" clickse="sei_ge_bubble01.mp3"]
  [return]

*room_points_1
  ; 玄関の探索箇所
  [button name="search_btn" graphic="point_tub.png" x=600 y=400 target="*do_search" exp="tf.point=0, tf.cost=2"]
  [return]

*room_points_2
  ; キッチンの探索箇所
  [button name="search_btn" graphic="point_tub.png" x=600 y=400 target="*do_search" exp="tf.point=0, tf.cost=2"]
  [return]

*room_points_3
  ; ランドリーの探索箇所
  [button name="search_btn" graphic="point_tub.png" x=600 y=400 target="*do_search" exp="tf.point=0, tf.cost=2"]
  [return]

*room_points_4
  ; リビング１の探索箇所
  [button name="search_btn" graphic="point_tub.png" x=600 y=400 target="*do_search" exp="tf.point=0, tf.cost=2"]
  [return]

*room_points_5
  ; リビング２の探索箇所
  [button name="search_btn" graphic="point_tub.png" x=600 y=400 target="*do_search" exp="tf.point=0, tf.cost=2"]
  [return]

*room_points_6
  ; 寝室の探索箇所
  [button name="search_btn" graphic="point_tub.png" x=600 y=400 target="*do_search" exp="tf.point=0, tf.cost=2"]
  [return]



; --- 共通探索ロジック ---
*do_search
[iscript]
    tf.can_action = (f.searchCnt >= tf.cost);
[endscript]

[if exp="tf.can_action == true"]
    [eval exp="f.searchCnt -= tf.cost"]
    ; 探索済フラグを立てる（macro.ksのsFlgeditを呼ぶなど）
    [sFlgedit place="&tf.point"]
    
    ; ここで個別イベント呼び出し
    [call storage="search_events.ks" target="&'*ev_r'+f.currInfo.room+'_p'+tf.point"]

    ; 探索回数が0になったら自動進行
    [if exp="f.searchCnt <= 0"]
        @jump target="*phase_end"
    [endif]
    [refresh_room]
[else]
    あまりに疲れていて、体が動かない。[l]
    @jump target="*phase_end"
[endif]
[s]

*phase_end
[mask time=1000]
[freeimage layer="0"]
[clearfix]
@jump storage="main.ks" target="*next_phase"