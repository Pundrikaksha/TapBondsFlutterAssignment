import 'package:freezed_annotation/freezed_annotation.dart';
part 'bond_model.freezed.dart';
part 'bond_model.g.dart';

@freezed
class BondList with _$BondList {
  const factory BondList({
    required List<Bond> bonds,
  }) = _BondList;

  factory BondList.fromJson(Map<String, dynamic> json) => _$BondListFromJson(json);
}

@freezed
class Bond with _$Bond {
  const factory Bond({
    required String logo,
    required String isin,
    required String rating,
     @JsonKey(name: "company_name") required String companyName,
    required List<String> tags,
  }) = _Bond;

  factory Bond.fromJson(Map<String, dynamic> json) => _$BondFromJson(json);
}
