<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8"/>
    <title>Chart Test</title>
    <!-- Load Google chart api -->
    <script type="text/javascript" src="https://www.google.com/jsapi"></script>
    <script type="text/javascript">
        google.load("visualization", "1.1", {packages: ["bar"]});
        google.setOnLoadCallback(drawChart);
        function drawChart() {
            var data = google.visualization.arrayToDataTable([
                ['Year', 'Sales', 'Expenses'],
                <?php
                foreach ($chart_data as $data) {
                    echo '[' . $data->performance_year . ',' . $data->performance_sales . ',' . $data->performance_expense . '],';
                }
                ?>
            ]);

            var options = {
                chart: {
                    title: 'Company Performance',
                    subtitle: 'Sales, Expenses, and Profit: <?php echo $min_year.'-'.$max_year;?>',
                }
            };
            var chart = new google.charts.Bar(document.getElementById('columnchart_material'));
            chart.draw(data, options);
        }
    </script>
</head>
<body>
<div id="columnchart_material" style="width: 900px; height: 500px;"></div>
</body>
</html>