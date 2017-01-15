<div class="page-container">
    <!-- BEGIN CONTENT -->
    <div class="page-content-wrapper">
        <!-- BEGIN CONTENT BODY -->
        <!-- BEGIN PAGE HEAD-->
        <div class="page-head">
            <div class="container">
                <!-- BEGIN PAGE TITLE -->
                <div class="page-title">
                    <h1>DIREKTORAT PTKLN
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
                        <span>Direktorat PTKLN</span>
                        <i class="fa fa-circle"></i>
                    </li>
                    <li>
                        <span>Realisasi Pendayagunaan TKS</span>
                    </li>
                </ul>
                <!-- END PAGE BREADCRUMBS -->
                <!--Modal 1-->
                <div class="modal fade" id="addModal1" tabindex="-1" role="addModal1" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                                <h4 class="modal-title">Upload Form Data Realisasi Pendayagunaan TKS</h4>
                            </div>
                            <form action="<?php echo base_url('DirektoratPPKK/PendayagunaanTKS/UploadExcel');?>" method="post"
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
                                            <span class="caption-subject font-green-sharp bold uppercase">Data Realisasi Pendayagunaan TKS</span>
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
                                                        <!--td><strong>Id Detail</strong></td-->
                                                        <td align="center"><strong>Provinsi</strong></td>
                                                        <td><strong>Tahun</strong></td>
                                                        <td><strong>Paket</strong></td>
                                                        <td><strong>Target</strong></td>
                                                        <td><strong>Realisasi</strong></td>
                                                    </tr>
                                                    <?php
                                                    if(is_array($pendayagunaantksModel) && count($pendayagunaantksModel) ) {
                                                        foreach($pendayagunaantksModel as $item){
                                                            ?>
                                                            <tr>
                                                                <td><?=$item->NAMAPROVINSI;?></td>
                                                                <td><?=$item->TAHUN;?></td>
                                                                <td><?=$item->PAKET;?></td>
                                                                <td><?=$item->TARGET;?></td>
                                                                <td><?=$item->REALISASI;?></td>
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