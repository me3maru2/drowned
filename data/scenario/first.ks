;一番最初に呼び出されるファイル

[title name="水死体"]

[stop_keyconfig]


;ティラノスクリプトが標準で用意している便利なライブラリ群
;コンフィグ、CG、回想モードを使う場合は必須
@call storage="tyrano.ks"

;ゲームで必ず必要な初期化処理はこのファイルに記述するのがオススメ

[iscript]
window.changeMyVolume = function() {
    // 1. レベル更新と音量反映
    f.vol_level = (f.vol_level === undefined) ? 2 : (f.vol_level + 1) % 4;
    var v = [0, 25, 50, 75][f.vol_level];
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
    [image name="vol_bg" layer="2" storage="&tf.vol_img_bg" x="&f.last_vol_x" y="&f.last_vol_y" visible="true"]
    
    ; 2. その上に「透明なボタン」を置く
    ; graphicには「透明な画像」か、ホバー時に少し明るくなる共通画像を指定
    [button name="vol_btn" fix="true" graphic="button/vol_btn.png" x="&f.last_vol_x" y="&f.last_vol_y" role="none" zindex="9999" clickse="sei_ge_bubble01.mp3" exp="changeMyVolume()"]
[endmacro]

; CSS読込
[loadcss file="./data/others/user.css"]

; ティラノ側のデフォルト設定も一応合わせておく
[deffont face="MyDotFont"]
[deffont color="0xB5C7C8" size=22]
[resetfont]

; メッセージウィンドウ
[position layer=message0 x=20 y=500 width=1240 height=200 color="0x06222D"]
; スマホ画面
[position layer=message1 x=100 y=20 width=300 height=680 color="0xB5C7C8"]



[iscript]
if (sf.endFlg == undefined) {
    sf.endFlg=[0,0,0,0,0];
}
[endscript]



;メッセージボックスは非表示
@layopt layer="message" visible=false

;最初は右下のメニューボタンを非表示にする
[hidemenubutton]

;マクロファイル読み込み
[call storage="macro.ks"]
;

;タイトル画面へ移動
@jump storage="title.ks"

[s]
