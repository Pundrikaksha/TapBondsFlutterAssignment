// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bond_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BondEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchBondListEvent,
    required TResult Function(String query) searchBondsEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchBondListEvent,
    TResult? Function(String query)? searchBondsEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchBondListEvent,
    TResult Function(String query)? searchBondsEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchBondListEvent value) fetchBondListEvent,
    required TResult Function(_SearchBondsEvent value) searchBondsEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchBondListEvent value)? fetchBondListEvent,
    TResult? Function(_SearchBondsEvent value)? searchBondsEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchBondListEvent value)? fetchBondListEvent,
    TResult Function(_SearchBondsEvent value)? searchBondsEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BondEventCopyWith<$Res> {
  factory $BondEventCopyWith(BondEvent value, $Res Function(BondEvent) then) =
      _$BondEventCopyWithImpl<$Res, BondEvent>;
}

/// @nodoc
class _$BondEventCopyWithImpl<$Res, $Val extends BondEvent>
    implements $BondEventCopyWith<$Res> {
  _$BondEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BondEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FetchBondListEventImplCopyWith<$Res> {
  factory _$$FetchBondListEventImplCopyWith(_$FetchBondListEventImpl value,
          $Res Function(_$FetchBondListEventImpl) then) =
      __$$FetchBondListEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchBondListEventImplCopyWithImpl<$Res>
    extends _$BondEventCopyWithImpl<$Res, _$FetchBondListEventImpl>
    implements _$$FetchBondListEventImplCopyWith<$Res> {
  __$$FetchBondListEventImplCopyWithImpl(_$FetchBondListEventImpl _value,
      $Res Function(_$FetchBondListEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of BondEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchBondListEventImpl implements _FetchBondListEvent {
  const _$FetchBondListEventImpl();

  @override
  String toString() {
    return 'BondEvent.fetchBondListEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchBondListEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchBondListEvent,
    required TResult Function(String query) searchBondsEvent,
  }) {
    return fetchBondListEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchBondListEvent,
    TResult? Function(String query)? searchBondsEvent,
  }) {
    return fetchBondListEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchBondListEvent,
    TResult Function(String query)? searchBondsEvent,
    required TResult orElse(),
  }) {
    if (fetchBondListEvent != null) {
      return fetchBondListEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchBondListEvent value) fetchBondListEvent,
    required TResult Function(_SearchBondsEvent value) searchBondsEvent,
  }) {
    return fetchBondListEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchBondListEvent value)? fetchBondListEvent,
    TResult? Function(_SearchBondsEvent value)? searchBondsEvent,
  }) {
    return fetchBondListEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchBondListEvent value)? fetchBondListEvent,
    TResult Function(_SearchBondsEvent value)? searchBondsEvent,
    required TResult orElse(),
  }) {
    if (fetchBondListEvent != null) {
      return fetchBondListEvent(this);
    }
    return orElse();
  }
}

abstract class _FetchBondListEvent implements BondEvent {
  const factory _FetchBondListEvent() = _$FetchBondListEventImpl;
}

/// @nodoc
abstract class _$$SearchBondsEventImplCopyWith<$Res> {
  factory _$$SearchBondsEventImplCopyWith(_$SearchBondsEventImpl value,
          $Res Function(_$SearchBondsEventImpl) then) =
      __$$SearchBondsEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$SearchBondsEventImplCopyWithImpl<$Res>
    extends _$BondEventCopyWithImpl<$Res, _$SearchBondsEventImpl>
    implements _$$SearchBondsEventImplCopyWith<$Res> {
  __$$SearchBondsEventImplCopyWithImpl(_$SearchBondsEventImpl _value,
      $Res Function(_$SearchBondsEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of BondEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$SearchBondsEventImpl(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchBondsEventImpl implements _SearchBondsEvent {
  const _$SearchBondsEventImpl(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'BondEvent.searchBondsEvent(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchBondsEventImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  /// Create a copy of BondEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchBondsEventImplCopyWith<_$SearchBondsEventImpl> get copyWith =>
      __$$SearchBondsEventImplCopyWithImpl<_$SearchBondsEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchBondListEvent,
    required TResult Function(String query) searchBondsEvent,
  }) {
    return searchBondsEvent(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchBondListEvent,
    TResult? Function(String query)? searchBondsEvent,
  }) {
    return searchBondsEvent?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchBondListEvent,
    TResult Function(String query)? searchBondsEvent,
    required TResult orElse(),
  }) {
    if (searchBondsEvent != null) {
      return searchBondsEvent(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchBondListEvent value) fetchBondListEvent,
    required TResult Function(_SearchBondsEvent value) searchBondsEvent,
  }) {
    return searchBondsEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchBondListEvent value)? fetchBondListEvent,
    TResult? Function(_SearchBondsEvent value)? searchBondsEvent,
  }) {
    return searchBondsEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchBondListEvent value)? fetchBondListEvent,
    TResult Function(_SearchBondsEvent value)? searchBondsEvent,
    required TResult orElse(),
  }) {
    if (searchBondsEvent != null) {
      return searchBondsEvent(this);
    }
    return orElse();
  }
}

abstract class _SearchBondsEvent implements BondEvent {
  const factory _SearchBondsEvent(final String query) = _$SearchBondsEventImpl;

  String get query;

  /// Create a copy of BondEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchBondsEventImplCopyWith<_$SearchBondsEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
