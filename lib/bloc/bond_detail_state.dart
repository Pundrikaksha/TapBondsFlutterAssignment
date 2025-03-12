part of 'bond_detail_bloc.dart';

@freezed
class BondDetailState with _$BondDetailState {
  const factory BondDetailState.loading() = _Loading;
  const factory BondDetailState.loaded(BondDetail bondDetail) = _Loaded;
  const factory BondDetailState.error(String message) = _Error;
}
