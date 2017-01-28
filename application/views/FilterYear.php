
<script src="<?php echo base_url();?>application/assets/GoogleCharts.js" type="text/javascript"></script>
<!--<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>-->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script>
    $(document).ready(function() {
        $('#opt').val(2013);
    })
</script>
<script type="text/javascript">
    //    $(document).ready(function(){ /* PREPARE THE SCRIPT */
    //        $("#opt").change(function(){ /* WHEN YOU CHANGE AND SELECT FROM THE SELECT FIELD */
    //            alert('test')
    //        });
    //    });

    google.charts.load("visualization", "1.1", {packages: ["bar"]});
    google.charts.setOnLoadCallback(drawChart);
    google.charts.setOnLoadCallback(drawChart2);
    google.charts.setOnLoadCallback(drawChart3);
    google.charts.setOnLoadCallback(drawChart7);
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
                title: 'Pencari Kerja Terdaftar',
                chartArea: {width: '50%'},
                isStacked: true,
            }
        };
        var chart = new google.charts.Bar(document.getElementById('columnchart_material'));
        chart.draw(data, options);
    }
    //PENEMPATAN AKAD CHART (7)
    function drawChart7() {
        var data7 = google.visualization.arrayToDataTable([
            ['Bulan', 'Pria', 'Wanita'],
            <?php
            foreach ($chart_data7 as $data7) {
                echo '['. "'". $data7->BULAN . "'". ',' . $data7->JUMLAHLAKI . ',' . $data7->JUMLAHPEREMPUAN . '],';
            }
            ?>
        ]);
        var options7 = {
            chart: {
                title: 'Penempatan Akad Total: <?php echo $total7; ?>',
                chartArea: {width: '50%'},
                isStacked: true,
            }
        };
        var chart7 = new google.charts.Bar(document.getElementById('columnchart_material7'));
        chart7.draw(data7, options7);
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
                title: 'Lowongan Kerja Terdaftar',
                chartArea: {width: '50%'},
                isStacked: true,
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
        //DONUT CHART
        google.charts.load("current", {packages:["corechart"]});
        google.charts.setOnLoadCallback(drawChart6);
        function drawChart6() {
            var data6 = google.visualization.arrayToDataTable([
                ['Task', 'Hours per Day'],
                <?php
                foreach ($chart_data6 as $data6) {
                    echo '['. "'". 'II/D' . "'". ',' . $data6->DUAD . '],';
                    echo '['. "'". 'III/A' . "'". ',' . $data6->TIGAA . '],';
                    echo '['. "'". 'III/B' . "'". ',' . $data6->TIGAB . '],';
                    echo '['. "'". 'III/C' . "'". ',' . $data6->TIGAC . '],';
                    echo '['. "'". 'III/D' . "'". ',' . $data6->TIGAD . '],';
                    echo '['. "'". 'IV/A' . "'". ',' . $data6->EMPATA . '],';
                    echo '['. "'". 'IV/B' . "'". ',' . $data6->EMPATB . '],';
                    echo '['. "'". 'IV/C' . "'". ',' . $data6->EMPATC . '],';
                }
                ?>
            ]);

            var options6 = {
                title: 'Rekap Jabatan Fungsional Pengantar Kerja Total : <?php echo $data6->DUAD +$data6->TIGAA+$data6->TIGAB+$data6->TIGAC+$data6->TIGAD+$data6->EMPATA+$data6->EMPATB+$data6->EMPATC; ?>' ,
                pieHole: 0.4,
            };

            var chart6 = new google.visualization.PieChart(document.getElementById('donutchart'));
            chart6.draw(data6, options6);
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
                            <form action="<?php echo base_url('Welcome');?>" method="get"
                                  class="form-horizontal">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="col-md-3">Tahun</label>
                                        <div class="col-md-3">
                                            <select name="opt" id="opt" class="form-control">
                                                <option>2010</option>
                                                <option>2011</option>
                                                <option>2012</option>
                                                <option>2013</option>
                                                <option>2014</option>
                                                <option>2015</option>
                                                <option>2016</option>
                                                <option>2017</option>
                                                <option>2018</option>
                                                <option>2019</option>
                                                <option>2020</option>
                                                <option>2021</option>
                                                <option>2022</option>
                                            </select>
                                        </div>
                                        <div class="col-md-3">
                                            <button type="submit" class="btn green">Pilih</button>
                                        </div>
                                    </div>
                                </div>
                            </form>

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
                            <!--CHART KEENAM-->
                            <div class="col-md-12">
                                <div class="portlet light">
                                    <div class="portlet-title">
                                        <div class="caption">
                                            <i class="fa fa-cogs font-green-sharp"></i>
                                            <span class="caption-subject font-green-sharp bold uppercase">DIREKTORAT PTKDN - REKAP JABATAN FUNGSIONAL PENGANTAR KERJA</span>
                                        </div>
                                    </div>
                                    <div class="portlet-body">
                                        <div id="donutchart" style="width: 900px; height: 500px;"></div>
                                    </div>
                                </div>
                            </div>
                            <!--CHART KETUJUH-->
                            <div class="col-md-12">
                                <div class="portlet light">
                                    <div class="portlet-title">
                                        <div class="caption">
                                            <i class="fa fa-cogs font-green-sharp"></i>
                                            <span class="caption-subject font-green-sharp bold uppercase">PENEMPATAN AKAD</span>
                                        </div>
                                    </div>
                                    <div class="portlet-body">
                                        <div id="columnchart_material7" style="width: 900px; height: 500px;">
                                        </div>
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


