import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tapbonds_flutter_assignment/bloc/bond_bloc.dart';
import 'package:tapbonds_flutter_assignment/bloc/bond_detail_bloc.dart';
import 'package:tapbonds_flutter_assignment/bloc/bond_event.dart';
import 'package:tapbonds_flutter_assignment/repository/bond_repository.dart';
import 'package:tapbonds_flutter_assignment/view/screens/home_screen.dart';

void main() {
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => BondBloc(
            BondRepository(),
          )..add(
              BondEvent.fetchBondListEvent(),
            ),
        ),
        BlocProvider(
          create: (context) => BondDetailBloc()
            ..add(
              const BondDetailEvent.fetch(),
            ),
        )
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Tap Bonds",
      home: HomeScreen(),
    );
  }
}
