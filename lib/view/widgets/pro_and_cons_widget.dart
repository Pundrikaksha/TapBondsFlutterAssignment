import 'package:flutter/material.dart';
import 'package:tapbonds_flutter_assignment/model/bond_detail_model.dart';

class ProsAndConsWidget extends StatelessWidget {
  final ProsAndCons data;

  const ProsAndConsWidget({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(color: Colors.black.withOpacity(0.05), blurRadius: 6),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Pros and Cons",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),

          // Pros Section
          _buildSection("Pros", data.pros, Colors.green, Icons.check_circle),

          const SizedBox(height: 12),

          // Cons Section
          _buildSection(
              "Cons", data.cons, Colors.deepOrangeAccent, Icons.error),
        ],
      ),
    );
  }

  Widget _buildSection(
      String title, List<String> items, Color color, IconData icon) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: color,
          ),
        ),
        const SizedBox(height: 6),
        Column(
          children:
              items.map((item) => _buildListItem(item, color, icon)).toList(),
        ),
      ],
    );
  }

  Widget _buildListItem(String text, Color color, IconData icon) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: color.withOpacity(0.6), size: 20),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(fontSize: 14, color: Colors.black87),
            ),
          ),
        ],
      ),
    );
  }
}
