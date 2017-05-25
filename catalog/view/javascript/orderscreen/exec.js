$(document).ready(function () {
    var cart_json = [];
    //------------------------- OWL Slider
    // (один контроль над 2 слайдерами)
    var $sync1 = $('#orderscreen-slider-1'),
        $sync2 = $('#orderscreen-slider-2'),
        flag = false,
        duration = 500;

    $sync1.owlCarousel({
        items: 1,
        dots: true,
        dotsContainer: "#orderscreen-dots"
    }).on('changed.owl.carousel', function (e) {
        if (!flag) {
            flag = true;
            $sync2.trigger('to.owl.carousel', [e.item.index, duration, true]);
            flag = false;
        }
    });

    $sync2.owlCarousel({
        items: 1,
        dotsContainer: "#orderscreen-dots",
        dots: true,
        margin: 10
    }).on('click', '.owl-item', function () {
        $sync1.trigger('to.owl.carousel', [$(this).index(), duration, true]);

    }).on('changed.owl.carousel', function (e) {
        if (!flag) {
            flag = true;
            $sync1.trigger('to.owl.carousel', [e.item.index, duration, true]);
            flag = false;
        }
    });


    //------------------------- Следующий шаг
    // (кнопка вперед
    $('.orderscreen-next').click(function(e){
        e.preventDefault();
        $("#step-"+$(this).data('step')).hide();
        $("#step-"+($(this).data('step')+1)).show();
    });

    //------------------------- Добавление товара в переменную
    $(".overlay").click(function(){
        $(this).css('background-color: black');
        cart_json.push($(this).data('id'));
    });
});