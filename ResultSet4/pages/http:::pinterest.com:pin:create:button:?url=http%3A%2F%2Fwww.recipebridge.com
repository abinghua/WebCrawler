<!DOCTYPE html>
<html lang="en" class="en">
    <head>
        <title>Pinterest / Login</title>
        <script type="text/javascript">var P_TIMER_START = new Date();</script>
        
        <meta name="google-site-verification" content="NvDayNupl7R0MDceeuRcs7xUf9yqUsxg6WGjEeRdAnc" />
        <meta name="application-name" content="Pinterest" />
<meta name="msapplication-TileColor" content="#ffffff" />
<meta name="msapplication-TileImage" content="https://s-passets-ec.pinimg.com/images/logo_trans_144x144.png" />
        <link rel="icon" href="https://s-passets-ec.pinimg.com/images/favicon.png" type="image/x-icon" />
        <link rel="apple-touch-icon-precomposed" href="https://s-passets-ec.pinimg.com/images/ipad_touch_icon.png" />
        <link rel="stylesheet" href="https://s-passets-ec.pinimg.com/css/pinboard_550b44ee.css" type="text/css" media="all"/>
        <!--[if (gt IE 6)&(lt IE 9)]><link rel="stylesheet" href="https://s-passets-ec.pinimg.com/css/ie7-and-up_d986617e.css" type="text/css" media="all" /><![endif]-->
        <script type="text/javascript">var _sf_startpt=(new Date()).getTime()</script>
        <script type="text/javascript">if (!window.console) { window.console = {log: function(){}} };</script>
        <script type="text/javascript">window.userIsAuthenticated = false;
        </script>
        <script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
        <script src="https://s-passets-ec.pinimg.com/js/bundle_pin_7b6bd75f.js" type="text/javascript" charset="utf-8"></script>
        
        
        <script>
    if (!window.P) {
        window.P = {};
    }
    P.SEARCH_FILTER_TYPES = JSON.parse('{"TAG_FACEBOOK_PINNER": "c", "TAG_TWITTER_PINNER": "d", "TAG_MUTUAL_FOLLOW": "a", "TAG_FACEBOOK_NON_PINNER": "e", "TAG_BOARD": "g", "TAG_TWITTER_NON_PINNER": "f", "TAG_FOLLOWEE": "b"}');
    P.SEARCH_LOADING = "https://s-passets-ec.pinimg.com/images/loading-typeahead.gif";
    P.EMAIL_INVITE_ICON = "https://s-passets-ec.pinimg.com/images/board/email_invite_icon.png";
    P.IS_AUTHENTICATED = false;
</script>
        
    </head>
    <noscript>
    <div id="NoScript">
        <h1>You need to enable Javascript.</h1>
    </div>
</noscript>
    

    <h1 id="login_logo"><a href="/"></a></h1>

    <div class="social_buttons">
        <div class="inset">
            <a class="fb login_button" href="/facebook/login/?next=%2Fpin%2Fcreate%2Fbutton%2F%3Furl%3Dhttp%253A%252F%252Fwww.recipebridge.com">
                <div class="logo_wrapper"><span class="logo"></span></div>
                <span>Login with Facebook</span>
            </a>
        </div>
        <div class="inset">
            <a class="tw login_button" href="/twitter/?next=%2Fpin%2Fcreate%2Fbutton%2F%3Furl%3Dhttp%253A%252F%252Fwww.recipebridge.com">
                <div class="logo_wrapper"><span class="logo"></span></div>
                <span>Login with Twitter</span>
            </a>
        </div>
    </div>

    <img class="login_bar" src="https://s-passets-ec.pinimg.com/images/login_bar.png" alt="Horizontal Rule" />

    
    
    <form id="AuthForm" class="Form FancyForm AuthForm" action="/login/?next=%2Flogin%2F" method="POST" accept-charset="utf-8">
        <ul class="ControlGroups">

            <li>
                <input id="id_email" name="email" type="text" />
                <label>Email</label>
                <span class="fff"></span>

                
            </li>

            <li>
                <input id="id_password" name="password" type="password" />
                <label>Password</label>
                <span class="fff"></span>

                
            </li>

            <input type="hidden" name="next" value="/pin/create/button/?url=http%3A%2F%2Fwww.recipebridge.com">

            <div style='display:none'><input type='hidden' name='csrfmiddlewaretoken' value='t9DHldHKk8elJVeGoeJAg7FuIbZKnsJZ' /></div><div style='display:none'><input type='hidden' name='_ch' value='kfeb0sba' /></div>

        </ul>

        <div class="non_inputs">
            <button type="submit" class="Button WhiteButton Button18">Login</button>
            <a id="resetPassword" class="colorless" href="/password/reset/">Forgot your password?</a>
        </div>

    </form><!-- .Form.FancyForm.AuthForm -->

    <form id="ResetForm" class="Form FancyForm AuthForm ResetForm" action="/password/reset/" method="POST" accept-charset="utf-8">
        <ul class="ControlGroups">

            <li>
                <input id="id_email_2" name="email" type="text" />
                <label>Email Address</label>
                <span class="fff"></span>
            </li>

            <div style='display:none'><input type='hidden' name='csrfmiddlewaretoken' value='t9DHldHKk8elJVeGoeJAg7FuIbZKnsJZ' /></div><div style='display:none'><input type='hidden' name='_ch' value='kfeb0sba' /></div>

        </ul>

        <div class="non_inputs">
            <button type="submit" class="Button WhiteButton Button18">Reset</button>
            <a id="backToLogin" class="colorless" href="">Back to Login?</a>
        </div>

    </form><!-- .Form.FancyForm.AuthForm.ResetForm -->

    <script type="text/javascript">
        $(document).ready(function() {
            Login.setup();
            FancyForm.setup();
        });
    </script>


    <div id="SearchAutocompleteHolder"></div>
    <button id="ScrollToTop" class="Button WhiteButton Offscreen Indicator" type="button">
    Scroll to Top
</button>
    
        <script type="text/javascript">
$(document).ready(function() {
    
    if (top != self) {
        $('body').html('<h1>Unauthorized</h1>')
    }
});
</script>
    
    
<script type="text/javascript">
	(function (){
			var footer = new Image();
			footer.src = '/_ch/oc1w3gbv';
	})();
</script>

    
<script type="text/javascript">
	$('html').ajaxSend(function(event, xhr, settings) {
		xhr.setRequestHeader("X-CH", 'kfeb0sba');
	});
</script>

    <script type="text/javascript">

    function filtered_gaq_push_pageview() {
        cur_url = document.URL;

       if (!cur_url.match(/email=/)) {
            _gaq.push(['_trackPageview']);
        }
    }

    function trackGAEvent(category, action, label, value) {
    _gaq = _gaq || []


        // Event
    _gaq.push(['_trackEvent', category, action, label, value]);

    // Virtual Page
        virtual_page = '_event_';
    virtual_page += "/" + category;

    if(!action) action = '_';
        virtual_page+="/" + action;
    if(label) virtual_page+= "/" + label;

    _gaq.push(['_trackPageview', virtual_page]);

        
    }

    var _gaq = _gaq || [];
    _gaq.push(['_setAccount', 'UA-12967896-1']);
    _gaq.push(['_setCustomVar', 1, 'is_logged_in', 'logged out', 2]);
    _gaq.push(['_setCustomVar', 2, 'page_name', 'login_screen', 1]);

    

    
    
        filtered_gaq_push_pageview();
    

    (function() {
      var ga = document.createElement('script'); ga.type='text/javascript'; ga.async=true;
      ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
      (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(ga);
    })();

</script>


    
<script type="text/javascript">
    var autoLoginFbook = function(response) {
        if (response.status !== 'connected') {
            return;
        }
        var uid = response.authResponse.userID;
        var accessToken = response.authResponse.accessToken;
        $.post("/login/facebook/", {
            access_token: accessToken,
            fb_id: uid},
            function(resp) {
                if (resp.status === "success") {
                    window.location.reload()
                }
            });
    };
    window.fbAsyncInit = function() {
        FB.init({
            appId: 274266067164,
            cookie: true
        });
        FB.getLoginStatus(autoLoginFbook);
    };
    (function() {
        var e = document.createElement('script');
        e.async = true;
        e.src = document.location.protocol +
        '//connect.facebook.net/en_US/all.js';
        var scriptTag = document.getElementsByTagName('script')[0];
        scriptTag.parentNode.appendChild(e);
    } ());
</script>


    






    <div id="ErrorDialog" class="ModalContainer alertBox">
    <div class="modal">
        <div class="closeBtn closeButton">&nbsp;</div>
        <div class="message"></div>
        <div class="footer">
          <button class="Button RedButton Button18 closeButton" type="button">Close</button>
        </div>
    </div>
    <div class="overlay"></div>
</div>

<div id="ConfirmationDialog" class="ModalContainer alertBox">
    <div class="modal">
        <div class="closeBtn closeButton">&nbsp;</div>
        <h2>Confirmation</h2>
        <div class="message"></div>
        <div class="footer">
          <button class="Button RedButton Button18 okButton confOkButton" type="button">Ok</button>
          <button class="Button RedButton Button18 okButton confOkButton2 hidden" type="button"></button>
          <button class="Button WhiteButton Button18 closeButton confCloseButton" type="button">Cancel</button>
        </div>
    </div>
    <div class="overlay"></div>
</div>


</html>