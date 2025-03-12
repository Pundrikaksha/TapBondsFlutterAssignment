import 'package:freezed_annotation/freezed_annotation.dart';
part 'bond_event.freezed.dart';

@freezed
class BondEvent with _$BondEvent {
  const factory BondEvent.fetchBondListEvent() = _FetchBondListEvent;
  const factory BondEvent.searchBondsEvent(String query) = _SearchBondsEvent;
}
