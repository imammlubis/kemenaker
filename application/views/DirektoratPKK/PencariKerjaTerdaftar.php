
<script src="https://code.jquery.com/jquery-1.9.1.min.js"></script>
<script>
    $( document ).ready(function() {
//        $(".table").tablesorter({
//            headers: {
//                5: { sorter: 'digit' } // column number, type
//            }
//        });


    });

    function priceFormatter(value) {
        // 16777215 == ffffff in decimal
        var color = '#'+Math.floor(Math.random() * 6777215).toString(16);
        return '<div  style="color: ' + color + '">' +
            '<i class="glyphicon glyphicon-usd"></i>' +
            value.substring(1) +
            '</div>';
    }

</script>
<div class="page-container">
    <!-- BEGIN CONTENT -->
    <div class="page-content-wrapper">
        <!-- BEGIN CONTENT BODY -->
        <!-- BEGIN PAGE HEAD-->
        <div class="page-head">
            <div class="container">
                <!-- BEGIN PAGE TITLE -->
                <div class="page-title">
                    <h1>DIREKTORAT PPK
                        <!--small>dashboard &amp; statistics</small-->
                    </h1>
                </div>
                <!-- END PAGE TITLE -->
            </div>
        </div>
        <!-- END PAGE HEAD-->
        <!-- BEGIN PAGE CONTENT BODY -->
        <div class="page-content">
            <div class="container">
                <!-- BEGIN PAGE BREADCRUMBS -->
                <ul class="page-breadcrumb breadcrumb">
                    <li>
                        <a href="#">Home</a>
                        <i class="fa fa-circle"></i>
                    </li>
                    <li>
                        <span>Direktorat PPK</span>
                        <i class="fa fa-circle"></i>
                    </li>
                    <li>
                        <span>Pencari Kerja Terdaftar</span>
                        <i class="fa fa-circle"></i>
                    </li>
                    <li>
                        <span>Pencari Kerja Terdaftar Menurut Provinsi</span>
                    </li>
                </ul>
                <!-- END PAGE BREADCRUMBS -->
                <!--Modal 1-->
                <div class="modal fade" id="addModal1" tabindex="-1" role="addModal1" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                                <h4 class="modal-title">Upload Form Data Pencari Kerja Terdaftar Menurut Provinsi</h4>
                            </div>
                            <form action="<?php echo base_url('DirektoratPKK/PencariKerjaTerdaftar/UploadExcel');?>" method="post"
                                  enctype="multipart/form-data"
                                  class="form-horizontal">
                            <div class="modal-body">
                                <div class="form-body">
                                    <div class="form-group">
                                        <label class="col-md-2 control-label">File</label>
                                        <div class="col-md-8">
                                            <div class="input-icon">
                                                <i class="fa fa-upload"></i>
                                                <input id="upload" name="upload" type="file" class="form-control input-circle" placeholder="Left icon">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-circle default" data-dismiss="modal">Close</button>
                                <button type="submit" class="btn btn-circle blue">Submit</button>
                            </div>
                            </form>
                        </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                </div>
                <!--End Modal1-->

                <!-- BEGIN PAGE CONTENT INNER -->
                <div class="page-content-inner">
                    <div class="mt-content-body">
                        <div class="row">
                            <div class="col-md-12">
                                <!-- BEGIN EXAMPLE TABLE PORTLET-->
                                <div class="portlet light">
                                    <div class="portlet-title">
                                        <div class="caption">
                                            <i class="fa fa-cogs font-green-sharp"></i>
                                            <span class="caption-subject font-green-sharp bold uppercase">Pencari Kerja Terdaftar Menurut Provinsi</span>
                                        </div>
                                        <div class="tools">
                                            <a href="javascript:;" class="collapse" data-original-title="" title="">
                                            </a>
                                        </div>
                                    </div>
                                    <div class="portlet-body">
                                        <div class="table-toolbar">
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="btn-group">
                                                        <button id="addnew1" class="btn green" data-toggle="modal" data-target="#addModal1">
                                                            Add New <i class="fa fa-plus"></i>
                                                        </button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div id="sample_1_wrapper" class="dataTables_wrapper no-footer">
                                            <div class="table-scrollable">
                                                <table class="table table-striped table-bordered table-condensed">
                                                    <tr>
                                                        <td><strong>Provinsi</strong></td>
                                                        <td><strong>Tahun</strong></td>
                                                        <td><strong>Jumlah</strong></td>
                                                    </tr>
                                                    <?php
                                                    if(is_array($DetailPKByProvinsiModel) && count($DetailPKByProvinsiModel) ) {
                                                        foreach($DetailPKByProvinsiModel as $item){
                                                            ?>
                                                            <tr>
                                                                <td><?=$item->NAMAPROVINSI;?></td>
                                                                <td><?=$item->IDTAHUN;?></td>
                                                                <td data-field="price" data-formatter="priceFormatter"><?=$item->JUMLAH;?></td>
                                                            </tr>
                                                            <?php
                                                        }
                                                    }?>
                                                </table>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-7 col-sm-12">
                                                    <?php echo $this->pagination->create_links(); ?>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- END EXAMPLE TABLE PORTLET-->
                            </div>
                        </div>

                    </div>
                </div>
                <!-- END PAGE CONTENT INNER -->
            </div>
        </div>
        <!-- END PAGE CONTENT BODY -->
        <!-- END CONTENT BODY -->
    </div>
    <!-- END CONTENT -->
</div>