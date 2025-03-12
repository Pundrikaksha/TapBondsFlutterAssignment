import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:tapbonds_flutter_assignment/model/bond_detail_model.dart';

class BondFinancialChart extends StatefulWidget {
  final Financials financialData;

  const BondFinancialChart({super.key, required this.financialData});

  @override
  _BondFinancialChartState createState() => _BondFinancialChartState();
}

class _BondFinancialChartState extends State<BondFinancialChart> {
  bool showEBITDA = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(color: Colors.black.withOpacity(0.1), blurRadius: 6),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "COMPANY FINANCIALS",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              ),
              _buildToggle(),
            ],
          ),
          const SizedBox(height: 12),
          SizedBox(
            height: 180,
            child: BarChart(
              BarChartData(
                maxY: 30000000,
                barTouchData: BarTouchData(
                  touchTooltipData: BarTouchTooltipData(
                    getTooltipItem: (group, groupIndex, rod, rodIndex) {
                      String month = "JFMAMJJASOND"[group.x.toInt()];
                      return BarTooltipItem(
                        "$month\n ${showEBITDA ? "EBITDA" : "Revenue"}: ₹${rod.toY.toInt()}",
                        TextStyle(color: Colors.white, fontSize: 12),
                      );
                    },
                  ),
                ),
                gridData: FlGridData(
                  show: true,
                  drawHorizontalLine: true,
                  drawVerticalLine: false,
                ),
                alignment: BarChartAlignment.spaceAround,
                borderData: FlBorderData(
                  show: false,
                ),
                titlesData: FlTitlesData(
                  leftTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      reservedSize: 40,
                      getTitlesWidget: (value, _) {
                        if (value == 0) return const SizedBox();
                        double val = value / 100000;
                        return Text("₹${val.toInt()}L",
                            style: const TextStyle(
                                fontSize: 12, color: Colors.grey));
                      },
                    ),
                  ),
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      getTitlesWidget: (value, _) {
                        return Text("JFMAMJJASOND"[value.toInt()],
                            style: const TextStyle(
                                fontSize: 12, color: Colors.grey));
                      },
                    ),
                  ),
                  rightTitles:
                      AxisTitles(sideTitles: SideTitles(showTitles: false)),
                  topTitles:
                      AxisTitles(sideTitles: SideTitles(showTitles: false)),
                ),
                barGroups: _createBarGroups(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildToggle() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.all(4),
      child: Row(
        children: [
          _toggleButton("EBITDA", showEBITDA),
          _toggleButton("Revenue", !showEBITDA),
        ],
      ),
    );
  }

  Widget _toggleButton(String text, bool isActive) {
    return GestureDetector(
      onTap: () => setState(() => showEBITDA = (text == "EBITDA")),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        decoration: BoxDecoration(
          color: isActive ? Colors.white : Colors.transparent,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
            color: isActive ? Colors.black : Colors.grey,
          ),
        ),
      ),
    );
  }

  List<BarChartGroupData> _createBarGroups() {
    List<FinancialData> data =
        showEBITDA ? widget.financialData.ebitda : widget.financialData.revenue;
    return List.generate(data.length, (index) {
      return BarChartGroupData(
        x: index,
        barRods: [
          // todo : replace the below code with rod stack implementation
          showEBITDA
              ? BarChartRodData(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(5),
                    topRight: Radius.circular(5),
                  ),
                  width: 20,
                  toY: data[index].value.toDouble(),
                  color: Colors.black,
                )
              : BarChartRodData(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(5),
                    topRight: Radius.circular(5),
                  ),
                  toY: data[index].value.toDouble(),
                  color: Colors.blueAccent,
                  width: 20,
                ),
        ],
      );
    });
  }
}
