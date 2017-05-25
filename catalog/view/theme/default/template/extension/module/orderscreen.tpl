<div id="representer">
    <!-- STEP 1 -->
    <div id="step-1">
        <div class="row">

            <div class="col-md-12 text-center text-center">
                <div class="orderscreen-title">
                    <p><span>Как проходит весь процесс</span></p>
                    <p>Вы заказываете, мы доставляем</p>
                </div>
            </div>

        </div>
        <div class="row">

            <div class="col-md-3 process">
                <div class="orderscreen-processstatus">
                    <p>Шаг 1</p>
                </div>
            </div>

            <div class="col-md-9">
                <ul class="orderscreen-processbar">
                    <li class="active">Шаг 1</li>
                    <li class="">Шаг 2</li>
                    <li class="">Шаг 3</li>
                    <li class="">Шаг 4</li>
                </ul>
            </div>

        </div>
        <div class="row orderscreen-instructions">
            <div class="col-md-12">
                <p>Выберите кресло</p>
            </div>
        </div>
        <div class="row orderscreen-slider">
            <div class="col-md-6">
                <div id="orderscreen-slider-1" class="owl-carousel">
                    <?php foreach($products['big'] as $group){ ?>

                    <div class="item">
                        <ul class="row">
                            <?php foreach($group as $product){ ?>
                                <!-- TODO неровно отображается высота картинки. Не хватает пикселя (слайдер 1 и слайдер 2) -->
                             <li class="col-md-6"><img style="width: 180px; height: 215px; margin:auto;" src="image/<?php echo $product['image'] ?>" title="<?php echo $product['name'] ?>"/>
                                 <div class="overlay" data-id="<?php echo $product['id'] ?>">
                                     <div class="text"><?php echo $product['name'] ?></div>
                                 </div>
                             </li>

                            <?php } ?>

                        </ul>
                    </div>
                    <?php } ?>

                </div>
            </div>
            <div class="col-md-6">
                <div id="orderscreen-slider-2" class="owl-carousel">
                    <?php foreach($products['small'] as $group2){ ?>
                    <div class="item">
                        <ul class="row">
                            <?php foreach($group2 as $product2){ ?>
                            <li class="col-md-4"><img style="width: 115px; height: 140px; margin: auto;" src="image/<?php echo $product2['image'] ?>" title="<?php echo $product2['name'] ?>" />
                                <div class="overlay" data-id="<?php echo $product['id'] ?>">
                                    <div class="text"><?php echo $product['name'] ?></div>
                                </div>
                            </li>
                            <?php } ?>
                        </ul>
                    </div>
                    <?php } ?>

                </div>
            </div>
        </div>
        <div class="row">
            <div id="orderscreen-dots" class="text-center col-md-4 col-md-offset-4" style="margin-top: 20px;"></div>
        </div>
        <div class="row">
            <div class="col-md-2 col-md-offset-10">
                <button class="btn btn-primary form-control orderscreen-next" data-step="1">Вперед</button>
            </div>
        </div>


    </div>
    <!-- STEP 1 ends -->

    <!-- STEP 2 -->
    <div id="step-2" style="display: none;">
        <div class="row">

            <div class="col-md-12 text-center text-center">
                <div class="orderscreen-title">
                    <p><span>Как проходит весь процесс</span></p>
                    <p>Вы заказываете, мы доставляем</p>
                </div>
            </div>

        </div>
        <div class="row">

            <div class="col-md-3 process">
                <div class="orderscreen-processstatus">
                    <p>Шаг 2</p>
                </div>
            </div>

            <div class="col-md-9">
                <ul class="orderscreen-processbar">
                    <li class="">Шаг 1</li>
                    <li class="active">Шаг 2</li>
                    <li class="">Шаг 3</li>
                    <li class="">Шаг 4</li>
                </ul>
            </div>

        </div>
        <div class="row orderscreen-instructions">
            <div class="col-md-12 text-center">
                <p>Заполните данные</p>
            </div>
        </div>
        <div class="row orderscreen-info">
            <div class="col-md-4 text-center">
                <p>Куда доставить?</p>
            </div>
            <div class="col-md-offset-2 col-md-6 text-center">
                <p>Способ доставки</p>
            </div>

            <div class="col-md-4">
            <div class="form-group">
                <input type="text" class="form-control" placeholder="Имя">
                <input type="mail" class="form-control" placeholder="Email">
                <input type="phone" class="form-control" placeholder="Телефон">
                <input type="city" class="form-control"  placeholder="Ваш город">
                <input type="home" class="form-control"  placeholder="Адрес">
            </div>
            </div>
            <div class="col-md-offset-2 col-md-6 info-radio-1">
                <div class="radio">
                    <label><input type="radio" name="optradio">Алматы (доставка курьером)</label>
                </div>
                <div class="radio">
                    <label><input type="radio" name="optradio">В другой город (доставка не включена в стоимость)</label>
                </div>
                <div class="info-radio-2">
                    <span class="text-center"><p>Как Вам удобно оплатить?</p></span>
                    <div class="radio">
                        <label><input type="radio" name="optradio">Оплата при доставке (только для г. Алматы)</label>
                    </div>
                    <div class="radio">
                        <label><input type="radio" name="optradio">Банковский перевод (для других городов)</label>
                    </div>
                </div>

            </div>

        </div>


        <div class="row">
            <div class="col-md-6">
                <div class="col-md-4">
                    <button class="btn btn-primary form-control orderscreen-back" data-step="2">Назад</button>
                </div>
            </div>
            <div class="col-md-6">
                <div class="col-md-4 col-md-offset-7">
                    <button class="btn btn-primary form-control orderscreen-next" data-step="2">Вперед</button>
                </div>
            </div>

        </div>


    </div>
    <!-- STEP 2 ends -->

    <!-- STEP 3 start -->
    <div id="step-3" style="display: none;">
        <div class="row">

            <div class="col-md-12 text-center text-center">
                <div class="orderscreen-title">
                    <p><span>Как проходит весь процесс</span></p>
                    <p>Вы заказываете, мы доставляем</p>
                </div>
            </div>

        </div>
        <div class="row">

            <div class="col-md-3 process">
                <div class="orderscreen-processstatus">
                    <p>Шаг 3</p>
                </div>
            </div>
            <div class="col-md-9">
                <ul class="orderscreen-processbar">
                    <li class="">Шаг 1</li>
                    <li class="">Шаг 2</li>
                    <li class="active">Шаг 3</li>
                    <li class="">Шаг 4</li>
                </ul>
            </div>

            <div class="row">
                <div class="col-md-12">
                    <p>Осталось совсем чуть-чуть</p>
                </div>
                <div class="col-md-12">
                    <div id="orderscreen-product-list">


                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-md-6">
                    <div class="col-md-4">
                        <button class="btn btn-primary form-control orderscreen-back" data-step="2">Назад</button>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="col-md-4 col-md-offset-7">
                        <button class="btn btn-primary form-control orderscreen-next" data-step="2">Вперед</button>
                    </div>
                </div>

            </div>

        </div>
    </div>
    <!-- STEP 3 ends -->

</div>

<script type="text/javascript">
    $(document).ready(function () {
        //------------------------- Глобальные переменные (запихаем в синглтон позже)
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
            // Если это шаг 2 то подгружаем эти продукты с сервера
            var $that = $(this);
            if($(this).data('step') == 2){
                $.ajax({
                    url: 'index.php?route=extension/module/orderscreen/getconfirm',
                    method: 'post',
                    data: 'products='+JSON.stringify(cart_json),
                    success: function(response){
                        $("#orderscreen-product-list").html(response);
                        $("#step-"+$that.data('step')).hide();
                        $("#step-"+($that.data('step')+1)).show();
                    }
                });
            }else{
                $("#step-"+$(this).data('step')).hide();
                $("#step-"+($(this).data('step')+1)).show();
            }
        });

        //------------------------- Предыдущий шаг
        // (кнопка назад

        $('.orderscreen-back').click(function(e){
            e.preventDefault();
            $("#step-"+$(this).data('step')).hide();
            $("#step-"+($(this).data('step')-1)).show();
        });

        //------------------------- Добавление товара в переменную
        $(".overlay").click(function(){
            $(this).css('background-color', 'black');
            cart_json.push($(this).data('id'));
            console.log(cart_json);
        });
    });
</script>

<!-- ftp: files.000webhost.com, username: opencart2modules, pass: opencart2modules -->

