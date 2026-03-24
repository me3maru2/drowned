[iscript]
window.changeMyVolume = function() {
    // 1. レベル更新と音量反映
    f.vol_level = (f.vol_level === undefined) ? 2 : (f.vol_level + 1) % 4;
    var v = [0, 15, 35, 70][f.vol_level];
    TYRANO.kag.ftag.startTag("bgmopt", { volume: v });
    TYRANO.kag.ftag.startTag("seopt", { volume: v });

    // 2. 画像のパス構築
    var timePrefix = (f.currInfo && f.currInfo.time) ? f.currInfo.time : "noon";
    var newSrc = "./data/fgimage/vol_button/" + timePrefix + "_vol_" + f.vol_level + ".png";
    
    // 【ここが修正ポイント】
    // ティラノの生成するクラス名は "vol_bg_fore" のように後ろに識別子がつくことがあるため、
    // 「vol_bgを含むクラス」を広めに探します。
    var $target = $("div[class*='vol_bg']").find("img");

    // もし上記で見つからなければ、name属性を直接指定
    if ($target.length === 0) {
        $target = $("img[data-event-pm*='vol_bg']"); // ティラノ内部データから探す
    }

    if ($target.length > 0) {
        $target.attr("src", newSrc);
        console.log("ターゲット画像を正常に更新しました: " + newSrc);
    } else {
        // 最終手段（これが出たらもう属性検索しかない）
        $("img[src*='_vol_']").attr("src", newSrc);
        console.warn("属性検索で更新しました（予備動作）。");
    }
};
[endscript]

[macro name="refresh_vol_btn"]
    [clearfix name="vol_btn"]
    [free name="vol_bg" layer="0"]
    
    [iscript]
        f.vol_level = (f.vol_level === undefined) ? 2 : parseInt(f.vol_level);
        if(mp.x !== undefined) f.last_vol_x = mp.x;
        if(mp.y !== undefined) f.last_vol_y = mp.y;
        var timePrefix = (f.currInfo && f.currInfo.time) ? f.currInfo.time : "noon";
        tf.vol_img_bg = 'vol_button/' + timePrefix + '_vol_' + f.vol_level + '.png';
    [endscript]

    ; 1. 背後に現在の音量画像を表示（これが本体）
    [image name="vol_bg" layer="0" storage="&tf.vol_img_bg" x="&f.last_vol_x" y="&f.last_vol_y" visible="true"]
    
    ; 2. その上に「透明なボタン」を置く
    ; graphicには「透明な画像」か、ホバー時に少し明るくなる共通画像を指定
    [button name="vol_btn" fix="true" graphic="button/vol_btn.png" x="&f.last_vol_x" y="&f.last_vol_y" role="none" zindex="9999" clickse="sei_ge_bubble01.mp3" exp="changeMyVolume()"]
[endmacro]

*start



[cm]
[clearfix]
[freeimage layer="0"]
[freeimage layer="1"]
[layopt layer="message0" visible=false]
[hidemenubutton]
[stopbgm]
[stopse]
[refresh_vol_btn x="10" y="590"]
@bg storage ="title_1.png" time=100
[mask_off]
[layopt layer="0" visible="true"]
[ptext layer="0" text="Ver 0.demo" x=10 y=680 size=30 color="#BB2626" edge="#BB2626" time="1200"]
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
[anim name="vol_btn" opacity=0 time=300]
[anim name="vol_bg" opacity=0 time=300]
[freeimage layer="0"]
@jump storage="main.ks"
