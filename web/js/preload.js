!function(){
    var images = new Array()
    function preload() {
        var length = preload.arguments.length;
        var number = 0;
        var rate = 0;
        for (i = 0; i < length; i++) {
            images[i] = new Image()
            images[i].src = preload.arguments[i];
            images[i].onload = function(){
                rate = (~~(++number/length * 100));
                $('#preload').find('p').html( rate + '%');
                if (rate === 100) {
                    $('#preload').remove();
                };
            }
        }
    }
    preload(
        "../img/bg.jpg",
        "../img/end.png",
        "../img/info_bg.png",
        "../img/item_bg.jpg",
        "../img/nope.png",
        "../img/rules.png",
        "../img/rules_pro.png",
        "../img/card_1.jpg",
        "../img/card_2.jpg",
        "../img/card_3.jpg",
        "../img/card_4.jpg",
        "../img/card_5.jpg",
        "../img/card_6.jpg",
        "../img/card_7.jpg",
        "../img/card_8.jpg",
        "../img/card_9.jpg"
    )
}();


