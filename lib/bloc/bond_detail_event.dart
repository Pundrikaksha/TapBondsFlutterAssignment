part of 'bond_detail_bloc.dart';

@freezed
class BondDetailEvent with _$BondDetailEvent {
  const factory BondDetailEvent.fetch() = FetchBondDetail;
}
