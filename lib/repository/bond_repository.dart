import 'package:flutter/material.dart';
import 'package:tapbonds_flutter_assignment/data/bonds_list_api_data.dart';
import 'package:tapbonds_flutter_assignment/model/bond_model.dart';

class BondRepository {
  Future<List<Bond>> fetchBondList() async {
    debugPrint('fetchBondList');
    final Map<String, dynamic> data = bondListJSON();
    final List<dynamic> bondListJson = data['data'];
    // Simulate an API call
    await Future.delayed(Duration(seconds: 1));
    try {
      List<Bond> bondList = (bondListJson)
          .map((json) => Bond.fromJson(json as Map<String, dynamic>))
          .toList();
      debugPrint('bondList: $bondList');
      debugPrint('bondList: ${bondList[0].logo}');
      return bondList;
    } catch (e) {
      debugPrint('error: $e');
      throw Exception('Failed to load bond list');
    }
  }
}
