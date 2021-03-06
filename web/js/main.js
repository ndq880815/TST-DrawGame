/**
 * data
 */
 $.list = [1,2,3,4,5,6,7,8,9];
 $.layout = {
    w: 640,
    h: 1136
 }
 $.page = 0;
 $.database = {};

/**
 * extend Zepto
 */
 $.fn.pipe = function(data, callback){
     data = $.parseJSON(data);
     var _res = data.jsonResponse.Rows ? data.jsonResponse.Rows[0] : data.jsonResponse;
     data.result === 'success' ? callback(_res) : $.fn.tips(_res);
     return this;
 };
 $.fn.tips = function(data){
     if (data !== 'usercode expiry') alert(data);;
     return this;
 }
 $.fn.storage = function(key, value){
    if (value) {
        if ($.type(key) === 'string') {
            $.cookie(key, value, { expires: 7 });
            return this;
        }
    } else {
        if($.type(key) === 'object') {
            for(var k in key) {
                $.cookie(k, key[k], { expires: 7 });
            }
            return this;
        }
        return $.cookie(key);
    }

 }

/**
 * onload
 */

$(function(){

    // scale the view
    var size = {
        w: window.innerWidth,
        h: window.innerHeight
    };
    if (size.w > 640) {
        size.w = 320;
    };
    var scale = size.w / $.layout.w;

    $('#root').css({
        'transform': 'scale('+scale+','+scale+')',
        '-webkit-transform': 'scale('+scale+','+scale+')'
    });
    if (size.w / size.h > 320 / 480) {
        $('.content').css({
        'transform': 'scale(.8, .8)',
        '-webkit-transform': 'scale(.8, .8)'
    });
    }


    // cache dom
    var pages = $('.page');
    var stage = $('.stage');


    /**
     * process
     */

    isLogin();

    if (new Date() >= ENDDATE || new Date() <= STARTDATE) {
        $('.page').last().addClass('active').siblings().removeClass('active');
    }

    $.fn.storage('bomb', 'notBomb');

    /**
     * workflow
     */

     // auto redirective
     function isLogin(){
        $.get('../tst_state.ashx?t=' + new Date(), {
               state    : $.fn.storage('state'),
               usercode : $.fn.storage('usercode')
           },
           function(res){
               $(this).pipe(res, function(data){
                    toGamePage(data);
               });
           }
        );
     }

     // start a game
     function isBomb(){
        $.post('../tst_winningrecord.ashx?t=' + new Date(), {
               usercode: $.fn.storage('usercode')
            },
            function(res){
                $(this).pipe(res, function(data){
                    data.prizename ? got(data) : lose(data);
                    $('.card').on('click', function(){
                        gameFlowCtrl($(this));
                        gameAnimCtrl($(this));
                        updateStatus();
                    });
                });
            }
        );
     }

     // page turning
     function toPage(page){
        if (new Date() >= ENDDATE || new Date() <= STARTDATE) {
            $('.page').last().addClass('active').siblings().removeClass('active');
        } else {
            pages.eq($.page).removeClass('active');
            $.page = page;
            pages.eq($.page).addClass('active');
        }
     }

     function toGamePage(data){
         $.fn.storage('tstcount', data.tstcount)
         updateStatus();
         toPage(1);
         stage.addClass('ready');
     }


    /**
     * event binding
     */

     // login page
     $('#login-btn').on('touchstart', function(){
        if (checkAvailable()) auth();
     });
     // game page
     $('.button').on('touchstart', function(){
        stage.hasClass('ready') || stage.hasClass('done') ? gameReset() : $.fn.tips('请选择一张卡片');
     });
     $('.link').on('touchstart', function(){
        toPage(2);
     })
     // rule page
     $('.close').on('touchstart', function(){
        toPage(1);
     })
     // info page
     $('#info-btn').on('touchstart', function(){
        if (checkInfo()) {
            $.post('../tst_userinfo.ashx?t=' + new Date(),{
                    name: $('#name').val(),
                    mp:   $('#mobile').val(),
                    ad:   $('#address').val(),
                    prize:$.fn.storage('id'),
                    usercode: $.fn.storage('usercode')
                },
                function(res){
                    $(this).pipe(res, function(data){
                        $.fn.tips('提交成功！')
                        toPage(1);
                    });
                }
            )
        }
     });
     $('#resetLogin').on('touchstart', function(){
        $.fn.storage('state', '');
        toPage(0);
     })

     /**
      * tools
      */
     // auth tools
     function checkAvailable(){
        if ($('#username').val() && $('#password').val()) {
            return true;
        } else {
            $.fn.tips('请输入正确的账号密码');
        }
     }

     function checkInfo(){
        if (!$('#name').val()) {
            $.fn.tips('请输入姓名');
            return false;
        };
        if (!$('#mobile').val()) {
            $.fn.tips('请输入手机号');
            return false;
        };
        if (!$('#address').val()) {
            $.fn.tips('请输入联系地址');
            return false;
        };
        if (!/^1[3578]\d{9}$/.test($('#mobile').val())) {
            $.fn.tips('输入的手机号有误');
            return false;
        };

        return true;
     }

     function auth(){
        $.post('../tst_login.ashx?t=' + new Date(), {name: $('#username').val(), pwd: $('#password').val(), isstate: $('#isRemember').prop('checked') ? 1 : 0}, function(res){
            $(this).pipe(res, function(data){
                // base info saved
                $(this).storage(data);
                // auto login
                if ($('#isRemember').prop('checked')) $(this).storage('state',data.usercode);
                // workflow control
                toGamePage(data);
            });
        });
     }

     // game tools
     function updateStatus(){
        var code = $.fn.storage('tstcode');
        var time = $.fn.storage('tstcount');
        $('.status').find('span').eq(0).html(code);
        $('.status').find('span').eq(1).html(time);
        $.fn.storage('tstcount', time);
     }

     function gameReset(){
        if ($.fn.storage('tstcount') == 0){
            toPage(4);
            return;
        };
        stage.removeClass('ready').removeClass('done').find('.chosen').removeClass('chosen').removeClass('active');
        isBomb();
     }

     function gameAnimCtrl($target){
        stage.toggleClass('done');
        $target
        .addClass('active')
        .addClass('chosen')
        .off()
        .one('touchstart', function(){
            $(this).removeClass('active');
        })
        .siblings().off();
        if ($.fn.storage('bomb') == 'isBomb') {
            setTimeout(function(){
                $.fn.tips('恭喜您中奖，请完善资料以便我们邮寄奖品！');
                toPage(3);
            }, 1300)
        };
     }

     function gameFlowCtrl($target){
        var index = $target.index();
        if (index === $.list.indexOf(5)) {
            if ($.fn.storage('bomb') === 'notBomb') {
                while(index === $.list.indexOf(5)){
                    randomList();
                }
            }
        } else {
            if ($.fn.storage('bomb') === 'isBomb') {
                while(index !== $.list.indexOf(5)){
                    randomList();
                }
            };
        }
        $('.card').each(function(index){
            $(this).find('.front').html('<img src="img/card_'+$.list[index]+'.jpg">');
        });
     }

     function randomList(){
        $.list = $.list.sort(function(){
            return Math.random()>.5 ? -1 : 1;
        });
     }

     function got(data){
         $.fn.storage(data);
         $.fn.storage('bomb', 'isBomb');
     }

     function lose(data){
         $.fn.storage('tstcount', data.toString());
         $.fn.storage('bomb', 'notBomb');
     }


})