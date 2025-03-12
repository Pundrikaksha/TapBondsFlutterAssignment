import 'package:flutter/material.dart';

class BondDataListTile extends StatelessWidget {
  const BondDataListTile({
    super.key,
    required this.investment,
  });

  final Map<String, String> investment;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 6),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: ListTile(
        leading: CircleAvatar(
          //todo : need to update image using local asset image
          backgroundImage: NetworkImage(investment["logo"]!),
        ),
        title: Text(
          investment["isin"]!,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text("${investment["rating"]} • ${investment["issuer"]}"),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
        onTap: () {
          // print("Tapped on ${investment["isin"]}");
        },
      ),
    );
  }
}
