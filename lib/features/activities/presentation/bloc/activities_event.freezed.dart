// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'activities_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ActivitiesEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ActivitiesEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ActivitiesEvent()';
}


}

/// @nodoc
class $ActivitiesEventCopyWith<$Res>  {
$ActivitiesEventCopyWith(ActivitiesEvent _, $Res Function(ActivitiesEvent) __);
}


/// Adds pattern-matching-related methods to [ActivitiesEvent].
extension ActivitiesEventPatterns on ActivitiesEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( LoadActivities value)?  loadActivities,TResult Function( AddActivity value)?  addActivity,TResult Function( JoinActivity value)?  joinActivity,required TResult orElse(),}){
final _that = this;
switch (_that) {
case LoadActivities() when loadActivities != null:
return loadActivities(_that);case AddActivity() when addActivity != null:
return addActivity(_that);case JoinActivity() when joinActivity != null:
return joinActivity(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( LoadActivities value)  loadActivities,required TResult Function( AddActivity value)  addActivity,required TResult Function( JoinActivity value)  joinActivity,}){
final _that = this;
switch (_that) {
case LoadActivities():
return loadActivities(_that);case AddActivity():
return addActivity(_that);case JoinActivity():
return joinActivity(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( LoadActivities value)?  loadActivities,TResult? Function( AddActivity value)?  addActivity,TResult? Function( JoinActivity value)?  joinActivity,}){
final _that = this;
switch (_that) {
case LoadActivities() when loadActivities != null:
return loadActivities(_that);case AddActivity() when addActivity != null:
return addActivity(_that);case JoinActivity() when joinActivity != null:
return joinActivity(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loadActivities,TResult Function( Activity activity)?  addActivity,TResult Function( String id)?  joinActivity,required TResult orElse(),}) {final _that = this;
switch (_that) {
case LoadActivities() when loadActivities != null:
return loadActivities();case AddActivity() when addActivity != null:
return addActivity(_that.activity);case JoinActivity() when joinActivity != null:
return joinActivity(_that.id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loadActivities,required TResult Function( Activity activity)  addActivity,required TResult Function( String id)  joinActivity,}) {final _that = this;
switch (_that) {
case LoadActivities():
return loadActivities();case AddActivity():
return addActivity(_that.activity);case JoinActivity():
return joinActivity(_that.id);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loadActivities,TResult? Function( Activity activity)?  addActivity,TResult? Function( String id)?  joinActivity,}) {final _that = this;
switch (_that) {
case LoadActivities() when loadActivities != null:
return loadActivities();case AddActivity() when addActivity != null:
return addActivity(_that.activity);case JoinActivity() when joinActivity != null:
return joinActivity(_that.id);case _:
  return null;

}
}

}

/// @nodoc


class LoadActivities implements ActivitiesEvent {
  const LoadActivities();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadActivities);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ActivitiesEvent.loadActivities()';
}


}




/// @nodoc


class AddActivity implements ActivitiesEvent {
  const AddActivity(this.activity);
  

 final  Activity activity;

/// Create a copy of ActivitiesEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddActivityCopyWith<AddActivity> get copyWith => _$AddActivityCopyWithImpl<AddActivity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddActivity&&(identical(other.activity, activity) || other.activity == activity));
}


@override
int get hashCode => Object.hash(runtimeType,activity);

@override
String toString() {
  return 'ActivitiesEvent.addActivity(activity: $activity)';
}


}

/// @nodoc
abstract mixin class $AddActivityCopyWith<$Res> implements $ActivitiesEventCopyWith<$Res> {
  factory $AddActivityCopyWith(AddActivity value, $Res Function(AddActivity) _then) = _$AddActivityCopyWithImpl;
@useResult
$Res call({
 Activity activity
});




}
/// @nodoc
class _$AddActivityCopyWithImpl<$Res>
    implements $AddActivityCopyWith<$Res> {
  _$AddActivityCopyWithImpl(this._self, this._then);

  final AddActivity _self;
  final $Res Function(AddActivity) _then;

/// Create a copy of ActivitiesEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? activity = null,}) {
  return _then(AddActivity(
null == activity ? _self.activity : activity // ignore: cast_nullable_to_non_nullable
as Activity,
  ));
}


}

/// @nodoc


class JoinActivity implements ActivitiesEvent {
  const JoinActivity(this.id);
  

 final  String id;

/// Create a copy of ActivitiesEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$JoinActivityCopyWith<JoinActivity> get copyWith => _$JoinActivityCopyWithImpl<JoinActivity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is JoinActivity&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'ActivitiesEvent.joinActivity(id: $id)';
}


}

/// @nodoc
abstract mixin class $JoinActivityCopyWith<$Res> implements $ActivitiesEventCopyWith<$Res> {
  factory $JoinActivityCopyWith(JoinActivity value, $Res Function(JoinActivity) _then) = _$JoinActivityCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class _$JoinActivityCopyWithImpl<$Res>
    implements $JoinActivityCopyWith<$Res> {
  _$JoinActivityCopyWithImpl(this._self, this._then);

  final JoinActivity _self;
  final $Res Function(JoinActivity) _then;

/// Create a copy of ActivitiesEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(JoinActivity(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
