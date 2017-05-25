<?php echo $header; ?><?php echo $column_left; ?>
    <div id="content">
        <div class="page-header">
            <div class="container-fluid">
                <div class="pull-right">
                    <button type="submit" form="form-account" data-toggle="tooltip" title="<?php echo $button_save; ?>"
                            class="btn btn-primary"><i class="fa fa-save"></i></button>
                    <a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $button_cancel; ?>"
                       class="btn btn-default"><i class="fa fa-reply"></i></a></div>
                <h1><?php echo $heading_title; ?></h1>
                <ul class="breadcrumb">
                    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
                        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
                    <?php } ?>
                </ul>
            </div>
        </div>
        <div class="container-fluid">
            <?php if ($error_warning) { ?>
                <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
                    <button type="button" class="close" data-dismiss="alert">&times;</button>
                </div>
            <?php } ?>
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title"><i class="fa fa-pencil"></i> <?php echo $text_edit; ?></h3>
                </div>
                <div class="panel-body">
                    <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-account"
                          class="form-horizontal">
                        <div class="form-group">
                            <label class="col-sm-2 control-label"
                                   for="input-status"><?php echo $entry_status; ?></label>
                            <div class="col-sm-10">
                                <select name="orderscreen_status" id="input-status" class="form-control">
                                    <?php if ($orderscreen_status) { ?>
                                        <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                                        <option value="0"><?php echo $text_disabled; ?></option>
                                    <?php } else { ?>
                                        <option value="1"><?php echo $text_enabled; ?></option>
                                        <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                                    <?php } ?>
                                </select>
                            </div>
                            <div class="col-md-9">
                            <ul class="nav nav-tabs">
                                <li class="active"><a data-toggle="tab" href="#home">Шаг 1</a></li>
                                <li><a data-toggle="tab" href="#menu1">Шаг 2</a></li>
                                <li><a data-toggle="tab" href="#menu2">Шаг 3</a></li>
                                <li><a data-toggle="tab" href="#menu2">Шаг 4</a></li>
                            </ul>
                            </div>

                            <div class="tab-content">
                                <div id="home" class="tab-pane fade in active">
                                    <div class="col-md-9">
                                    <h3>Шаг 1</h3>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label " for="input-status">Блок слева (2х2)</label>
                                        <div class="col-sm-10 ">
                                            <input class="form-control"/>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-sm-2 control-label " for="input-status">Блок справа (3х3)</label>
                                        <div class="col-sm-10 ">
                                            <input class="form-control"/>
                                        </div>
                                    </div>
                                    </div>
                                </div>

                                <div id="menu1" class="tab-pane fade">
                                    <div class="col-md-9">
                                    <h3>Заполнение</h3>
                                        <div class="form-group">
                                            <label class="col-sm-2 control-label" for="input-status">ФИО</label>
                                            <div class="col-sm-10 ">
                                                <input class="form-control"/>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <label class="col-sm-2 control-label" for="input-status">Адрес</label>
                                            <div class="col-sm-10 ">
                                                <input class="form-control"/>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div id="menu2" class="tab-pane fade">
                                    <div class="col-md-9">
                                    <h3>Menu 2</h3>
                                    <p>Some content in menu 2.</p>
                                    </div>
                                </div>
                                <div id="menu3" class="tab-pane fade">
                                    <div class="col-md-9">
                                    <h3>Menu 3</h3>
                                    <p>Some content in menu 2.</p>
                                    </div>
                                </div>
                            </div>
                            <!-- TODO добить до завтра Макс -->

                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
<?php echo $footer; ?>