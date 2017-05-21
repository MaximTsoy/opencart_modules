<div id="representer">
  <div id="step-1">
    <div class="container">
      <div class="row">
        <div class="col-md-9 text-center">
          <div class="orderscreen-title">
            <p><span>Как проходит весь процесс</span></p>
            <p>Вы заказываете, мы доставляем</p>
          </div>
        </div>
      </div>
    </div>
    <div class="container">
      <div class="row">
        <div class="col-md-2 process">
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
    </div>
    <div class="orderscreen-instructions">
      <p>Выберите кресло</p>
    </div>
    <div class="container">
      <div class="row">
        <div class="orderscreen-slider">
          <div class="col-md-4">
            <div class="orderscreen-slider-1 owl-carousel">
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
            <div class="orderscreen-slider-2 owl-carousel">
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
      </div>
    </div>


  </div>
  <!--<div id="orderscreen" class="owl-carousel">
      <div class="item text-center">

      </div>
  </div>-->
</div>
<!--
<div id="banner<?php echo $module; ?>" class="owl-carousel">
  <?php foreach ($banners as $banner) { ?>
  <div class="item">
    <?php if ($banner['link']) { ?>
    <a href="<?php echo $banner['link']; ?>"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive" /></a>
    <?php } else { ?>
    <img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive" />
    <?php } ?>
  </div>
  <?php } ?>
</div>-->
<script type="text/javascript"><!--
$('#banner<?php echo $module; ?>').owlCarousel({
	items: 6,
	autoPlay: 3000,
	singleItem: true,
	navigation: false,
	pagination: false,
	transitionStyle: 'fade'
});
--></script>
