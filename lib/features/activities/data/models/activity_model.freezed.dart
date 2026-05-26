// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'activity_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ActivityModel {

 String get id; String get title; String get sport; double get latitude; double get longitude;@JsonKey(name: 'scheduled_at') int get scheduledAt;@JsonKey(name: 'max_participants') int get maxParticipants;@JsonKey(name: 'current_participants') int get currentParticipants;@JsonKey(name: 'organizer_id') String get organizerId;
/// Create a copy of ActivityModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ActivityModelCopyWith<ActivityModel> get copyWith => _$ActivityModelCopyWithImpl<ActivityModel>(this as ActivityModel, _$identity);

  /// Serializes this ActivityModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ActivityModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.sport, sport) || other.sport == sport)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.scheduledAt, scheduledAt) || other.scheduledAt == scheduledAt)&&(identical(other.maxParticipants, maxParticipants) || other.maxParticipants == maxParticipants)&&(identical(other.currentParticipants, currentParticipants) || other.currentParticipants == currentParticipants)&&(identical(other.organizerId, organizerId) || other.organizerId == organizerId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,sport,latitude,longitude,scheduledAt,maxParticipants,currentParticipants,organizerId);

@override
String toString() {
  return 'ActivityModel(id: $id, title: $title, sport: $sport, latitude: $latitude, longitude: $longitude, scheduledAt: $scheduledAt, maxParticipants: $maxParticipants, currentParticipants: $currentParticipants, organizerId: $organizerId)';
}


}

/// @nodoc
abstract mixin class $ActivityModelCopyWith<$Res>  {
  factory $ActivityModelCopyWith(ActivityModel value, $Res Function(ActivityModel) _then) = _$ActivityModelCopyWithImpl;
@useResult
$Res call({
 String id, String title, String sport, double latitude, double longitude,@JsonKey(name: 'scheduled_at') int scheduledAt,@JsonKey(name: 'max_participants') int maxParticipants,@JsonKey(name: 'current_participants') int currentParticipants,@JsonKey(name: 'organizer_id') String organizerId
});




}
/// @nodoc
class _$ActivityModelCopyWithImpl<$Res>
    implements $ActivityModelCopyWith<$Res> {
  _$ActivityModelCopyWithImpl(this._self, this._then);

  final ActivityModel _self;
  final $Res Function(ActivityModel) _then;

/// Create a copy of ActivityModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? sport = null,Object? latitude = null,Object? longitude = null,Object? scheduledAt = null,Object? maxParticipants = null,Object? currentParticipants = null,Object? organizerId = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,sport: null == sport ? _self.sport : sport // ignore: cast_nullable_to_non_nullable
as String,latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,scheduledAt: null == scheduledAt ? _self.scheduledAt : scheduledAt // ignore: cast_nullable_to_non_nullable
as int,maxParticipants: null == maxParticipants ? _self.maxParticipants : maxParticipants // ignore: cast_nullable_to_non_nullable
as int,currentParticipants: null == currentParticipants ? _self.currentParticipants : currentParticipants // ignore: cast_nullable_to_non_nullable
as int,organizerId: null == organizerId ? _self.organizerId : organizerId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ActivityModel].
extension ActivityModelPatterns on ActivityModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ActivityModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ActivityModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ActivityModel value)  $default,){
final _that = this;
switch (_that) {
case _ActivityModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ActivityModel value)?  $default,){
final _that = this;
switch (_that) {
case _ActivityModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  String sport,  double latitude,  double longitude, @JsonKey(name: 'scheduled_at')  int scheduledAt, @JsonKey(name: 'max_participants')  int maxParticipants, @JsonKey(name: 'current_participants')  int currentParticipants, @JsonKey(name: 'organizer_id')  String organizerId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ActivityModel() when $default != null:
return $default(_that.id,_that.title,_that.sport,_that.latitude,_that.longitude,_that.scheduledAt,_that.maxParticipants,_that.currentParticipants,_that.organizerId);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  String sport,  double latitude,  double longitude, @JsonKey(name: 'scheduled_at')  int scheduledAt, @JsonKey(name: 'max_participants')  int maxParticipants, @JsonKey(name: 'current_participants')  int currentParticipants, @JsonKey(name: 'organizer_id')  String organizerId)  $default,) {final _that = this;
switch (_that) {
case _ActivityModel():
return $default(_that.id,_that.title,_that.sport,_that.latitude,_that.longitude,_that.scheduledAt,_that.maxParticipants,_that.currentParticipants,_that.organizerId);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  String sport,  double latitude,  double longitude, @JsonKey(name: 'scheduled_at')  int scheduledAt, @JsonKey(name: 'max_participants')  int maxParticipants, @JsonKey(name: 'current_participants')  int currentParticipants, @JsonKey(name: 'organizer_id')  String organizerId)?  $default,) {final _that = this;
switch (_that) {
case _ActivityModel() when $default != null:
return $default(_that.id,_that.title,_that.sport,_that.latitude,_that.longitude,_that.scheduledAt,_that.maxParticipants,_that.currentParticipants,_that.organizerId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ActivityModel implements ActivityModel {
  const _ActivityModel({required this.id, required this.title, required this.sport, required this.latitude, required this.longitude, @JsonKey(name: 'scheduled_at') required this.scheduledAt, @JsonKey(name: 'max_participants') required this.maxParticipants, @JsonKey(name: 'current_participants') required this.currentParticipants, @JsonKey(name: 'organizer_id') required this.organizerId});
  factory _ActivityModel.fromJson(Map<String, dynamic> json) => _$ActivityModelFromJson(json);

@override final  String id;
@override final  String title;
@override final  String sport;
@override final  double latitude;
@override final  double longitude;
@override@JsonKey(name: 'scheduled_at') final  int scheduledAt;
@override@JsonKey(name: 'max_participants') final  int maxParticipants;
@override@JsonKey(name: 'current_participants') final  int currentParticipants;
@override@JsonKey(name: 'organizer_id') final  String organizerId;

/// Create a copy of ActivityModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ActivityModelCopyWith<_ActivityModel> get copyWith => __$ActivityModelCopyWithImpl<_ActivityModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ActivityModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ActivityModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.sport, sport) || other.sport == sport)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.scheduledAt, scheduledAt) || other.scheduledAt == scheduledAt)&&(identical(other.maxParticipants, maxParticipants) || other.maxParticipants == maxParticipants)&&(identical(other.currentParticipants, currentParticipants) || other.currentParticipants == currentParticipants)&&(identical(other.organizerId, organizerId) || other.organizerId == organizerId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,sport,latitude,longitude,scheduledAt,maxParticipants,currentParticipants,organizerId);

@override
String toString() {
  return 'ActivityModel(id: $id, title: $title, sport: $sport, latitude: $latitude, longitude: $longitude, scheduledAt: $scheduledAt, maxParticipants: $maxParticipants, currentParticipants: $currentParticipants, organizerId: $organizerId)';
}


}

/// @nodoc
abstract mixin class _$ActivityModelCopyWith<$Res> implements $ActivityModelCopyWith<$Res> {
  factory _$ActivityModelCopyWith(_ActivityModel value, $Res Function(_ActivityModel) _then) = __$ActivityModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String sport, double latitude, double longitude,@JsonKey(name: 'scheduled_at') int scheduledAt,@JsonKey(name: 'max_participants') int maxParticipants,@JsonKey(name: 'current_participants') int currentParticipants,@JsonKey(name: 'organizer_id') String organizerId
});




}
/// @nodoc
class __$ActivityModelCopyWithImpl<$Res>
    implements _$ActivityModelCopyWith<$Res> {
  __$ActivityModelCopyWithImpl(this._self, this._then);

  final _ActivityModel _self;
  final $Res Function(_ActivityModel) _then;

/// Create a copy of ActivityModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? sport = null,Object? latitude = null,Object? longitude = null,Object? scheduledAt = null,Object? maxParticipants = null,Object? currentParticipants = null,Object? organizerId = null,}) {
  return _then(_ActivityModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,sport: null == sport ? _self.sport : sport // ignore: cast_nullable_to_non_nullable
as String,latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,scheduledAt: null == scheduledAt ? _self.scheduledAt : scheduledAt // ignore: cast_nullable_to_non_nullable
as int,maxParticipants: null == maxParticipants ? _self.maxParticipants : maxParticipants // ignore: cast_nullable_to_non_nullable
as int,currentParticipants: null == currentParticipants ? _self.currentParticipants : currentParticipants // ignore: cast_nullable_to_non_nullable
as int,organizerId: null == organizerId ? _self.organizerId : organizerId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
