
<script src="<?php echo base_url();?>application/assets/GoogleCharts.js" type="text/javascript"></script>
<!--<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>-->
<script type="text/javascript">
    google.charts.load("visualization", "1.1", {packages: ["bar"]});
    google.charts.setOnLoadCallback(drawChart);
    google.charts.setOnLoadCallback(drawChart2);
    google.charts.setOnLoadCallback(drawChart3);
    function drawChart() {
        var data = google.visualization.arrayToDataTable([
            ['Provinsi', 'Jumlah'],
            <?php
            foreach ($chart_data as $data) {
                echo '['. "'". $data->NAMA . "'". ',' . $data->JUMLAH . '],';
            }
            ?>
        ]);
        var options = {
            chart: {
                title: 'Pencari Kerja Terdaftar'
            }
        };
        var chart = new google.charts.Bar(document.getElementById('columnchart_material'));
        chart.draw(data, options);
    }

    function drawChart2() {
        var data2 = google.visualization.arrayToDataTable([
            ['Provinsi', 'Jumlah'],
            <?php
            foreach ($chart_data2 as $data2) {
                echo '['. "'". $data2->NAMA . "'". ',' . $data2->JUMLAH . '],';
            }
            ?>
        ]);
        var options2 = {
            chart: {
                title: 'Lowongan Kerja Terdaftar'
            }
        };
        var chart2 = new google.charts.Bar(document.getElementById('columnchart_material2'));
        chart2.draw(data2, options2);
    }

    function drawChart3() {
        var data3 = google.visualization.arrayToDataTable([
            ['Provinsi', 'Jumlah'],
            <?php
            foreach ($chart_data3 as $data3) {
                echo '['. "'". $data3->NAMA . "'". ',' . $data3->JUMLAH . '],';
            }
            ?>
        ]);
        var options3 = {
            chart: {
                title: 'Lowongan Kerja Terdaftar'
            }
        };
        var chart3 = new google.charts.Bar(document.getElementById('columnchart_material3'));
        chart3.draw(data3, options3);

        google.charts.load('current', {packages: ['corechart', 'bar']});
        google.charts.setOnLoadCallback(drawStacked);
        function drawStacked() {
            var data4 = google.visualization.arrayToDataTable([
                ['Tahun', 'Pria', 'Wanita'],
                <?php
                foreach ($chart_data4 as $data4) {
                    echo '['. "'". 'Tahun: '. $data4->IDTAHUN . "'". ',' . $data4->PRIA . ',' . $data4->WANITA . '],';
                }
                ?>
            ]);

            var options4 = {
                title: 'Total Lowongan Kerja Terdaftar',
                chartArea: {width: '50%'},
                isStacked: true,
                hAxis: {
                    title: 'Total Lowongan Kerja',
                    minValue: 0,
                },
                vAxis: {
                    title: 'Jenis Kelamin'
                }
            };
            var chart4 = new google.visualization.BarChart(document.getElementById('chart_div'));
            chart4.draw(data4, options4);
        }
        google.charts.setOnLoadCallback(drawStacked2);
        function drawStacked2() {
            var data5 = google.visualization.arrayToDataTable([
                ['Tahun', 'Pria', 'Wanita'],
                <?php
                foreach ($chart_data5 as $data5) {
                    echo '['. "'". 'Tahun: '. $data5->IDTAHUN . "'". ',' . $data5->PRIA . ',' . $data5->WANITA . '],';
                }
                ?>
            ]);

            var options5 = {
                title: 'Total Pencari Kerja Terdaftar',
                chartArea: {width: '50%'},
                isStacked: true,
                hAxis: {
                    title: 'Total Pencari Kerja',
                    minValue: 0,
                },
                vAxis: {
                    title: 'Jenis Kelamin'
                }
            };
            var chart5 = new google.visualization.BarChart(document.getElementById('chart_div2'));
            chart5.draw(data5, options5);
        }
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
<!--                    <h1>DASHBOARD-->
                        <!--small>dashboard &amp; statistics</small-->
<!--                    </h1>-->
                </div>
                <!-- END PAGE TITLE -->
            </div>
        </div>
        <!-- END PAGE HEAD-->
        <!-- BEGIN PAGE CONTENT BODY -->
        <div class="page-content">
            <div class="container">
                <!-- BEGIN PAGE CONTENT INNER -->
                <div class="page-content-inner">
                    <div class="mt-content-body">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="portlet light">
                                    <div class="portlet-title">
                                        <div class="caption">
                                            <i class="fa fa-cogs font-green-sharp"></i>
                                            <span class="caption-subject font-green-sharp bold uppercase">PENCARI KERJA TERDAFTAR</span>
                                        </div>
                                    </div>
                                    <div class="portlet-body">
                                        <div id="columnchart_material" style="width: 900px; height: 500px;"></div>
<!--                                        <div id="chart_div"></div>-->
                                    </div>
                                </div>
                            </div>
                            <!--CHART KEDUA-->
                            <div class="col-md-12">
                                <div class="portlet light">
                                    <div class="portlet-title">
                                        <div class="caption">
                                            <i class="fa fa-cogs font-green-sharp"></i>
                                            <span class="caption-subject font-green-sharp bold uppercase">LOWONGAN KERJA TERDAFTAR</span>
                                        </div>
                                    </div>
                                    <div class="portlet-body">
                                        <div id="columnchart_material2" style="width: 900px; height: 500px;">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!--CHART KETIGA-->
                            <div class="col-md-12">
                                <div class="portlet light">
                                    <div class="portlet-title">
                                        <div class="caption">
                                            <i class="fa fa-cogs font-green-sharp"></i>
                                            <span class="caption-subject font-green-sharp bold uppercase">PENEMPATAN KERJA TERDAFTAR</span>
                                        </div>
                                    </div>
                                    <div class="portlet-body">
                                        <div id="columnchart_material3" style="width: 900px; height: 500px;">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!--CHART KEEMPAT-->
                            <div class="col-md-12">
                                <div class="portlet light">
                                    <div class="portlet-title">
                                        <div class="caption">
                                            <i class="fa fa-cogs font-green-sharp"></i>
                                            <span class="caption-subject font-green-sharp bold uppercase">TOTAL LOWONGAN KERJA TERDAFTAR</span>
                                        </div>
                                    </div>
                                    <div class="portlet-body">
                                                                                <div id="chart_div"></div>
                                    </div>
                                </div>
                            </div>
                            <!--CHART KELIMA-->
                            <div class="col-md-12">
                                <div class="portlet light">
                                    <div class="portlet-title">
                                        <div class="caption">
                                            <i class="fa fa-cogs font-green-sharp"></i>
                                            <span class="caption-subject font-green-sharp bold uppercase">TOTAL PENCARI KERJA TERDAFTAR</span>
                                        </div>
                                    </div>
                                    <div class="portlet-body">
                                        <div id="chart_div2"></div>
                                    </div>
                                </div>
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
