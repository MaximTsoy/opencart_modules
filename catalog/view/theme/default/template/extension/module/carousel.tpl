<div id="representer">
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

      <div class="col-md-7">
        <ul class="orderscreen-processbar">
          <li>1</li>
          <li>2</li>
          <li>3</li>
          <li>4</li>
        </ul>
      </div>

    </div>
    <div class="row orderscreen-instructions">
      <div class="col-md-12">
        <p>Выберите кресло</p>
      </div>
    </div>
    <div class="row">
      <div class="row">
        <div class="orderscreen-slider">
          <div class="col-md-6">
            <div id="orderscreen-slider-1" class="owl-carousel">
              <div class="item">
                <ul class="row">
                  <li class="col-md-6">1</li>
                  <li class="col-md-6">2</li>
                  <li class="col-md-6">3</li>
                  <li class="col-md-6">4</li>
                </ul>
              </div>
              <div class="item">
                <ul class="row">
                  <li class="col-md-6">1</li>
                  <li class="col-md-6">2</li>
                  <li class="col-md-6">3</li>
                  <li class="col-md-6">4</li>
                </ul>
              </div>
            </div>
          </div>
          <div class="col-md-6">
            <div id="orderscreen-slider-2" class="owl-carousel">
              <div class="item">
                <ul class="row">
                  <li class="col-md-4">1</li>
                  <li class="col-md-4">2</li>
                  <li class="col-md-4">3</li>
                  <li class="col-md-4">4</li>
                  <li class="col-md-4">5</li>
                  <li class="col-md-4">6</li>
                  <li class="col-md-4">7</li>
                  <li class="col-md-4">8</li>
                  <li class="col-md-4">9</li>
                </ul>
              </div>

              <div class="item">
                <ul class="row">
                  <li class="col-md-4">1</li>
                  <li class="col-md-4">2</li>
                  <li class="col-md-4">3</li>
                  <li class="col-md-4">4</li>
                  <li class="col-md-4">5</li>
                  <li class="col-md-4">6</li>
                  <li class="col-md-4">7</li>
                  <li class="col-md-4">8</li>
                  <li class="col-md-4">9</li>
                </ul>
              </div>

            </div>
          </div>
        </div>
        <div id="orderscreen-dots" style="width: 100px; position: absolute; top: 100px; left: 100px; display: block">

        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-md-2 col-md-offset-10">
        <button class="btn btn-primary form-control">Вперед</button>
      </div>
    </div>


  </div>
  <!--<div id="orderscreen" class="owl-carousel">
      <div class="item text-center">

      </div>
  </div>-->
</div>

<script type="text/javascript">



  jQuery(document).ready(function () {

    var $sync1 = $('#orderscreen-slider-1'),
        $sync2 = $('#orderscreen-slider-2'),
        flag = false,
        duration = 300;

    $sync1
        .owlCarousel({
          items: 1,
          dots: true,
          dotsContainer: "#orderscreen-dots"
        })
        .on('changed.owl.carousel', function (e) {
          if (!flag) {
            flag = true;
            $sync2.trigger('to.owl.carousel', [e.item.index, duration, true]);
            flag = false;
          }
        });

    $sync2
        .owlCarousel({
          items: 1,
          dotsContainer: "#orderscreen-dots",
          dots: false,
          margin:10,
          nav:true,
        })
        .on('click', '.owl-item', function () {
          $sync1.trigger('to.owl.carousel', [$(this).index(), duration, true]);

        })
        .on('changed.owl.carousel', function (e) {
          if (!flag) {
            flag = true;
            $sync1.trigger('to.owl.carousel', [e.item.index, duration, true]);
            flag = false;
          }
        });
  });

</script>


