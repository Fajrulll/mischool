import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class pelanggaran extends StatefulWidget {
  const pelanggaran({super.key});

  @override
  State<pelanggaran> createState() => _pelanggaranState();
}

class _pelanggaranState extends State<pelanggaran> {
  late List<plData> _chartData;
  late TooltipBehavior _tooltipBehavior;

  @override
  void initState() {
    _chartData = getChart();
    _tooltipBehavior = TooltipBehavior(enable: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SfCircularChart(
          legend: Legend(
              isVisible: true, overflowMode: LegendItemOverflowMode.wrap),
          tooltipBehavior: _tooltipBehavior,
          series: <CircularSeries>[
            DoughnutSeries<plData, String>(
              dataSource: _chartData,
              xValueMapper: (plData data, _) => data.continent,
              yValueMapper: (plData data, _) => data.pelanggaran,
              dataLabelSettings: DataLabelSettings(isVisible: true),
              enableTooltip: true,
              pointColorMapper: (plData data, _) => data.color,
            ),
          ],
        ),
      ),
    );
  }

  List<plData> getChart() {
    final List<plData> chartData = [
      plData('SP1', 46000, Colors.blue), // Atur warna sesuai data
      plData('SP1', 46000, Colors.green), // Atur warna sesuai data
      plData('SP1', 16000, Colors.red), // Atur warna sesuai data
      plData('SP1', 16000, Colors.orange), // Atur warna sesuai data
      plData('SP1', 16000, Colors.purple), // Atur warna sesuai data
    ];
    return chartData;
  }
}

class plData {
  plData(this.continent, this.pelanggaran, this.color);
  final String continent;
  final int pelanggaran;
  final Color color; // Menambahkan properti warna
}
