import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tapbonds_flutter_assignment/model/bond_detail_model.dart';
import 'package:tapbonds_flutter_assignment/model/bond_model.dart';
part 'bond_state.freezed.dart';

@freezed
class BondState with _$BondState {
  const factory BondState.initial() = _Initial;
  const factory BondState.loading() = _Loading;
  const factory BondState.loaded(List<Bond> bondList) = _Loaded;
  // const factory BondState.bondDetailLoaded(BondDetail bondDetail) = _BondDetailLoaded;
  const factory BondState.error(String message) = _Error;

}
