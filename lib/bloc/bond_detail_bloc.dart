import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tapbonds_flutter_assignment/data/bond_detail_api_data.dart';
import 'package:tapbonds_flutter_assignment/model/bond_detail_model.dart';

part 'bond_detail_event.dart';
part 'bond_detail_state.dart';
part 'bond_detail_bloc.freezed.dart';

class BondDetailBloc extends Bloc<BondDetailEvent, BondDetailState> {
  BondDetailBloc() : super(const BondDetailState.loading()) {
    on<FetchBondDetail>(_onFetchBondDetail);
  }

  void _onFetchBondDetail(
      FetchBondDetail event, Emitter<BondDetailState> emit) async {
    emit(const BondDetailState.loading());

    // Simulating API call delay
    await Future.delayed(const Duration(seconds: 2));

    try {
      // Dummy JSON (Replace with real API call)
      final bondDetail = BondDetail.fromJson(bondDetailJSON());

      emit(BondDetailState.loaded(bondDetail));
    } catch (e) {
      emit(const BondDetailState.error("Failed to load bond details"));
    }
  }
}
