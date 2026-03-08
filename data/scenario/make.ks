;このファイルは削除しないでください！
;
;make.ks はデータをロードした時に呼ばれる特別なKSファイルです。
;Fixレイヤーの初期化など、ロード時点で再構築したい処理をこちらに記述してください。
;
;
[iscript]
// スキップ開始・停止を監視
$(window).on('keydown mousedown', function(){
    setTimeout(function(){
        if(TYRANO.kag.stat.is_skip == true){
            TYRANO.kag.ftag.startTag("start_skip_effect", {});
        } else {
            TYRANO.kag.ftag.startTag("stop_skip_effect", {});
        }
    }, 10);
});
[endscript]

;make.ks はロード時にcallとして呼ばれるため、return必須です。
[return]

