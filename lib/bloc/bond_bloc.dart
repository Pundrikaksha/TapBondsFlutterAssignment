import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:tapbonds_flutter_assignment/bloc/bond_event.dart';
import 'package:tapbonds_flutter_assignment/bloc/bond_state.dart';
import 'package:tapbonds_flutter_assignment/model/bond_model.dart';
import 'package:tapbonds_flutter_assignment/repository/bond_repository.dart';

class BondBloc extends Bloc<BondEvent, BondState> {
  final BondRepository _bondRepository;

  BondBloc(this._bondRepository) : super(BondState.initial()) {
    on<BondEvent>((event, emit) async {
      await event.map(
        fetchBondListEvent: (e) async => _onFetchBondList(emit),
        searchBondsEvent: (e) async => _onSearchBonds(emit, e.query),
      );
    });
  }
  void _onFetchBondList(Emitter<BondState> emit) async {
    emit(const BondState.loading());
    try {
      debugPrint('bondList: ');
      final bondList = await _bondRepository.fetchBondList();
      debugPrint('bondList: $bondList');
      debugPrint('bondList: ${bondList[0].logo}');
      emit(BondState.loaded(bondList));
    } catch (e) {
      emit(BondState.error(e.toString()));
    }
  }

  
  void _onSearchBonds(Emitter<BondState> emit, String query) {
    final filteredBonds = state.maybeWhen(
      loaded: (bondList) => bondList
          .where((bond) =>
              bond.companyName.contains(query) || bond.isin.contains(query))
          .toList(),
      orElse: () => [],
    );
    emit(BondState.loaded(filteredBonds as List<Bond>));
  }
}
