;このファイルは削除しないでください！
;
;make.ks はデータをロードした時に呼ばれる特別なKSファイルです。
;Fixレイヤーの初期化など、ロード時点で再構築したい処理をこちらに記述してください。
;
;

[iscript]
$(window).on('loadstart', function() {
    if (f.wait_timer) {
        clearTimeout(f.wait_timer);
        f.wait_timer = null;
    }
    tf.is_waiting = false;
});

// スキップ監視の修正
/*
$(window).off('keydown.skipcheck mousedown.skipcheck');
$(window).on('keydown.skipcheck mousedown.skipcheck', function(){
    setTimeout(function(){
        // TYRANO やそのプロパティが存在するか厳密にチェック
        if (typeof TYRANO !== 'undefined' && TYRANO.kag && TYRANO.kag.ftag) {
            if(TYRANO.kag.stat.is_skip == true){
                // タグが存在する場合のみ実行（存在しないカスタムタグを呼んでいないか確認）
                TYRANO.kag.ftag.startTag("start_skip_effect", {});
            } else {
                TYRANO.kag.ftag.startTag("stop_skip_effect", {});
            }
        }
    }, 10);
});
*/
[endscript]

[rebuild_tf_vars]

[return]

