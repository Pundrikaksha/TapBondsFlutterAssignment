import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tapbonds_flutter_assignment/bloc/bond_detail_bloc.dart';
import 'package:tapbonds_flutter_assignment/model/bond_detail_model.dart';
import 'package:tapbonds_flutter_assignment/view/widgets/bond_financial_chart.dart';
import 'package:tapbonds_flutter_assignment/view/widgets/pro_and_cons_widget.dart';

class BondDetailScreen extends StatelessWidget {
  const BondDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Bond Details")),
      body: BlocBuilder<BondDetailBloc, BondDetailState>(
        builder: (context, state) {
          return state.when(
            loading: () => const Center(child: CircularProgressIndicator()),
            loaded: (bondDetail) => _buildContent(bondDetail),
            error: (message) => Center(
                child:
                    Text(message, style: const TextStyle(color: Colors.red))),
          );
        },
      ),
    );
  }

  Widget _buildContent(BondDetail bondDetail) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildHeader(bondDetail),
            _buildCompanyDetails(bondDetail),
            TabSwitchWidget(
              onTabChanged: (p0) {},
              bondDetail: bondDetail,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader(BondDetail bondDetail) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.network(bondDetail.logo, width: 50, height: 50),
        const SizedBox(height: 10),
        Text(bondDetail.companyName,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
      ],
    );
  }

  Widget _buildCompanyDetails(BondDetail bondDetail) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(bondDetail.description,
            style: const TextStyle(fontSize: 14, color: Colors.grey)),
        const SizedBox(height: 10),
        Row(
          children: [
            _statusChip("ISIN: " + bondDetail.isin, Colors.blue),
            const SizedBox(width: 10),
            _statusChip(bondDetail.status, Colors.green),
          ],
        ),
      ],
    );
  }

  Widget _statusChip(String text, Color color) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
          color: color.withOpacity(0.2),
          borderRadius: BorderRadius.circular(5)),
      child: Text(text,
          style: TextStyle(color: color, fontWeight: FontWeight.bold)),
    );
  }
}

class TabSwitchWidget extends StatefulWidget {
  final Function(int) onTabChanged;
  final BondDetail bondDetail;
  const TabSwitchWidget(
      {super.key, required this.onTabChanged, required this.bondDetail});

  @override
  _TabSwitchWidgetState createState() => _TabSwitchWidgetState();
}

class _TabSwitchWidgetState extends State<TabSwitchWidget> {
  int _selectedIndex = 0; // Default to "Pros & Cons"

  void _onTabTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
    widget.onTabChanged(index);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 8),
        Row(
          children: [
            _buildTabItem("ISIN Analysis", 0),
            const SizedBox(width: 16),
            _buildTabItem("Pros & Cons", 1),
          ],
        ),
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 300),
          child: _selectedIndex == 0
              ? _isinAnalysisWidget()
              : ProsAndConsWidget(data: widget.bondDetail.prosAndCons),
        ),
      ],
    );
  }

  Widget _buildTabItem(String title, int index) {
    bool isActive = _selectedIndex == index;

    return GestureDetector(
      onTap: () => _onTabTap(index),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
              color: isActive ? Colors.blue : Colors.black54,
            ),
          ),
          const SizedBox(height: 4),
          if (isActive)
            Container(
              width: 40,
              height: 3,
              color: Colors.blue,
            ),
        ],
      ),
    );
  }

  Widget _isinAnalysisWidget() {
    return Column(
      children: [
        _buildFinancials(widget.bondDetail.financials),
        _buildIssuerDetails(widget.bondDetail.issuerDetails),
      ],
    );
  }

  Widget _buildFinancials(Financials financials) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 8),
      child: BondFinancialChart(financialData: financials),
    );
  }

  Widget _buildIssuerDetails(IssuerDetails issuerDetails) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      margin: const EdgeInsets.symmetric(vertical: 24, horizontal: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.contact_page),
              const SizedBox(width: 8),
              Text(
                "Issuer Details",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
            ],
          ),
          SizedBox(height: 8),
          Divider(color: Colors.grey.shade300, thickness: 1),
          SizedBox(height: 8),
          _issuerRow("Issuer Name", issuerDetails.issuerName),
          _issuerRow("Type of Issuer", issuerDetails.typeOfIssuer),
          _issuerRow("Sector", issuerDetails.sector),
          _issuerRow("Industry", issuerDetails.industry),
          _issuerRow("Issuer Nature", issuerDetails.issuerNature),
          _issuerRow("Corporate Identity Number (CIN)", issuerDetails.cin),
          _issuerRow("Registrar", issuerDetails.registrar),
          _issuerRow("Debenture Trustee", issuerDetails.debentureTrustee),
        ],
      ),
    );
  }

  Widget _issuerRow(String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Colors.blueAccent,
            ),
          ),
          SizedBox(height: 2),
          Text(
            value.isNotEmpty ? value : "-",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Colors.black87,
            ),
          ),
        ],
      ),
    );
  }
}
