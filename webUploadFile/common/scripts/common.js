/**
 * Created by YELLOW2013 on 2016/2/26 0026.
 */
(function() {
    //注册global ajax事件
    $(document)
        .ajaxSend(function() {
            consoleTime('ajax request start');
            ProgressGif({
                show: true
            });
        })
        .ajaxComplete(function() {
            consoleTime('ajax request complete');
            ProgressGif({
                show: false
            });
        })
        .ajaxError(function (event, xhr, opts, err) {
            console.log("Error requesting: " + opts.url + ";" + xhr.status + ";" + xhr.statusText);
            console.log(xhr.responseText);
        });

    $(document).error(function () {
    });
})();
function ProgressGif(options) {
    var opts = $.extend(true, {
        show: true,
        gifId: 'progressImage',
        maskId: 'maskOfProgressImage',
        gifUrl: 'common/Image/loading.gif'
    }, options);

    var $gif = $('#' + opts.gifId),
        $mask = $('#' + opts.maskId);

    if (!opts.show) {
        //hide
        $gif.hide();
        $mask.hide();
    } else {
        if (!($gif && $gif.length > 0) || !($mask && $mask.length > 0)) {
            var gifHtml = '<img id="' + opts.gifId + '" style="z-index: 2000; display:none;" alt="" src="' + opts.gifUrl + '"/>\
      <div id="' + opts.maskId + '" style="position: fixed;top: 0;right: 0;bottom: 0;left: 0; z-index: 1000; background-color: #0a0a0a;display:none;"></div>';
            $gif.remove();
            $mask.remove();
            $(gifHtml).appendTo('body');
        }
        $gif = $('#' + opts.gifId);
        $mask = $('#' + opts.maskId);
        $gif
            .show()
            .css({
                "position": "absolute",
                "top": (window.screen.height - 400) / 2,
                "left": (window.screen.width - 550) / 2,
            });
        $mask.show().css("opacity", "0.2");
    }
}
var consolePerfermance = {
    enable: false,
    startTimeStamp: (new Date()).getTime(),
    endTimeStamp: (new Date()).getTime()
};
function consoleTime(title, data) {
    if (consolePerfermance.enable) {
        consolePerfermance.endTimeStamp = (new Date()).getTime();
        console.log(title + ":   " + (consolePerfermance.endTimeStamp - consolePerfermance.startTimeStamp));
        consolePerfermance.startTimeStamp = consolePerfermance.endTimeStamp;
        if (data) {
            console.log(JSON.stringify(data));
        }
    }
}