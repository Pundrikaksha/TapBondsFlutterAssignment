// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bond_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BondListImpl _$$BondListImplFromJson(Map<String, dynamic> json) =>
    _$BondListImpl(
      bonds: (json['bonds'] as List<dynamic>)
          .map((e) => Bond.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$BondListImplToJson(_$BondListImpl instance) =>
    <String, dynamic>{
      'bonds': instance.bonds,
    };

_$BondImpl _$$BondImplFromJson(Map<String, dynamic> json) => _$BondImpl(
      logo: json['logo'] as String,
      isin: json['isin'] as String,
      rating: json['rating'] as String,
      companyName: json['company_name'] as String,
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$BondImplToJson(_$BondImpl instance) =>
    <String, dynamic>{
      'logo': instance.logo,
      'isin': instance.isin,
      'rating': instance.rating,
      'company_name': instance.companyName,
      'tags': instance.tags,
    };
