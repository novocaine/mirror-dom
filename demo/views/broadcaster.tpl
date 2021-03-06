<!DOCTYPE html>
<html>
    <head>
        <!-- mirrordom dependency if you are using the default JQueryXHRPusher -->
        <script type="text/javascript"
            src="/static/json2.js"></script>
        <script type="text/javascript"
            src="/static/mirrordom/common.js"></script>
        <script type="text/javascript"
            src="/static/mirrordom/broadcaster.js"></script>
        <!-- not a mirrordom dependency, just makes doing the demo page 
            easier -->
        <script type="text/javascript"
            src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
        <script type="text/javascript">
            var broadcaster;
            jQuery(function() {
                broadcaster = new MirrorDom.Broadcaster({
                    root_url: "{{mirrordom_uri}}/",
                    iframe:   document.getElementById("mirrordom_iframe"),
                    debug:    true,
                });
                
                var POLL_INTERVAL = 2000;
                window.setInterval(jQuery.proxy(broadcaster, "go"), POLL_INTERVAL)
            });
        </script>
    </head>
    <body style="margin: 0; padding: 0;">
        <div id="toolbar" style="background-color: #DDDDDD; height: 40px; overflow: hidden;">
            Broadcaster iframe toolbar test
        </div>
        <div id="iframe">
            <!--iframe id="mirrordom" src="http://www.yahoo.com" style="overflow: hidden; width:100%; height:30cm;" /-->
            <iframe id="mirrordom_iframe" src="static/helloworld.html" style="overflow: hidden; width:100%; height:30cm;">
        </div>
    </body>
</html>
