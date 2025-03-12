import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tapbonds_flutter_assignment/bloc/bond_bloc.dart';
import 'package:tapbonds_flutter_assignment/bloc/bond_event.dart';
import 'package:tapbonds_flutter_assignment/bloc/bond_state.dart';
import 'package:tapbonds_flutter_assignment/view/screens/bond_detail_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text("Home",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Search Bar
            TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: "Search by Issuer Name or ISIN",
                prefixIcon: const Icon(Icons.search),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
              onChanged: (query) {
                if (query.isEmpty) {
                  context.read<BondBloc>().add(BondEvent.fetchBondListEvent());
                } else {
                  context
                      .read<BondBloc>()
                      .add(BondEvent.searchBondsEvent(query));
                }
              },
            ),
            const SizedBox(height: 16),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8),
              child: Text(
                "SUGGESTED RESULTS",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              ),
            ),

            // Bond List
            Expanded(
              child: BlocBuilder<BondBloc, BondState>(
                builder: (context, state) {
                  return state.when(
                    initial: () {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    },
                    loading: () => const Center(
                      child: CircularProgressIndicator(),
                    ),
                    loaded: (bondList) => ListView.builder(
                      itemCount: bondList.length,
                      itemBuilder: (context, index) {
                        final bond = bondList[index];
                        return Card(
                          margin: const EdgeInsets.symmetric(vertical: 8),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12)),
                          child: ListTile(
                            contentPadding: const EdgeInsets.all(12),
                            leading: CircleAvatar(
                              backgroundImage: NetworkImage(bond.logo),
                              radius: 25,
                            ),
                            title: Text(
                              bond.isin,
                              style: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text(
                              "${bond.rating}  •  ${bond.companyName}",
                              style: TextStyle(color: Colors.grey[600]),
                            ),
                            trailing: const Icon(Icons.arrow_forward_ios,
                                size: 18, color: Colors.grey),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => BondDetailScreen(),
                                ),
                              );
                            },
                          ),
                        );
                      },
                    ),
                    error: (message) => Center(child: Text(message)),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
