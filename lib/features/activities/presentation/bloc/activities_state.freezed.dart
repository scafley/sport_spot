// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'activities_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ActivitiesState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ActivitiesState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ActivitiesState()';
}


}

/// @nodoc
class $ActivitiesStateCopyWith<$Res>  {
$ActivitiesStateCopyWith(ActivitiesState _, $Res Function(ActivitiesState) __);
}


/// Adds pattern-matching-related methods to [ActivitiesState].
extension ActivitiesStatePatterns on ActivitiesState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ActivitiesInitial value)?  initial,TResult Function( ActivitiesLoading value)?  loading,TResult Function( ActivitiesLoaded value)?  loaded,TResult Function( ActivitiesError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ActivitiesInitial() when initial != null:
return initial(_that);case ActivitiesLoading() when loading != null:
return loading(_that);case ActivitiesLoaded() when loaded != null:
return loaded(_that);case ActivitiesError() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ActivitiesInitial value)  initial,required TResult Function( ActivitiesLoading value)  loading,required TResult Function( ActivitiesLoaded value)  loaded,required TResult Function( ActivitiesError value)  error,}){
final _that = this;
switch (_that) {
case ActivitiesInitial():
return initial(_that);case ActivitiesLoading():
return loading(_that);case ActivitiesLoaded():
return loaded(_that);case ActivitiesError():
return error(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ActivitiesInitial value)?  initial,TResult? Function( ActivitiesLoading value)?  loading,TResult? Function( ActivitiesLoaded value)?  loaded,TResult? Function( ActivitiesError value)?  error,}){
final _that = this;
switch (_that) {
case ActivitiesInitial() when initial != null:
return initial(_that);case ActivitiesLoading() when loading != null:
return loading(_that);case ActivitiesLoaded() when loaded != null:
return loaded(_that);case ActivitiesError() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<Activity> activities)?  loaded,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ActivitiesInitial() when initial != null:
return initial();case ActivitiesLoading() when loading != null:
return loading();case ActivitiesLoaded() when loaded != null:
return loaded(_that.activities);case ActivitiesError() when error != null:
return error(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<Activity> activities)  loaded,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case ActivitiesInitial():
return initial();case ActivitiesLoading():
return loading();case ActivitiesLoaded():
return loaded(_that.activities);case ActivitiesError():
return error(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<Activity> activities)?  loaded,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case ActivitiesInitial() when initial != null:
return initial();case ActivitiesLoading() when loading != null:
return loading();case ActivitiesLoaded() when loaded != null:
return loaded(_that.activities);case ActivitiesError() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class ActivitiesInitial implements ActivitiesState {
  const ActivitiesInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ActivitiesInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ActivitiesState.initial()';
}


}




/// @nodoc


class ActivitiesLoading implements ActivitiesState {
  const ActivitiesLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ActivitiesLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ActivitiesState.loading()';
}


}




/// @nodoc


class ActivitiesLoaded implements ActivitiesState {
  const ActivitiesLoaded(final  List<Activity> activities): _activities = activities;
  

 final  List<Activity> _activities;
 List<Activity> get activities {
  if (_activities is EqualUnmodifiableListView) return _activities;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_activities);
}


/// Create a copy of ActivitiesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ActivitiesLoadedCopyWith<ActivitiesLoaded> get copyWith => _$ActivitiesLoadedCopyWithImpl<ActivitiesLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ActivitiesLoaded&&const DeepCollectionEquality().equals(other._activities, _activities));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_activities));

@override
String toString() {
  return 'ActivitiesState.loaded(activities: $activities)';
}


}

/// @nodoc
abstract mixin class $ActivitiesLoadedCopyWith<$Res> implements $ActivitiesStateCopyWith<$Res> {
  factory $ActivitiesLoadedCopyWith(ActivitiesLoaded value, $Res Function(ActivitiesLoaded) _then) = _$ActivitiesLoadedCopyWithImpl;
@useResult
$Res call({
 List<Activity> activities
});




}
/// @nodoc
class _$ActivitiesLoadedCopyWithImpl<$Res>
    implements $ActivitiesLoadedCopyWith<$Res> {
  _$ActivitiesLoadedCopyWithImpl(this._self, this._then);

  final ActivitiesLoaded _self;
  final $Res Function(ActivitiesLoaded) _then;

/// Create a copy of ActivitiesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? activities = null,}) {
  return _then(ActivitiesLoaded(
null == activities ? _self._activities : activities // ignore: cast_nullable_to_non_nullable
as List<Activity>,
  ));
}


}

/// @nodoc


class ActivitiesError implements ActivitiesState {
  const ActivitiesError(this.message);
  

 final  String message;

/// Create a copy of ActivitiesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ActivitiesErrorCopyWith<ActivitiesError> get copyWith => _$ActivitiesErrorCopyWithImpl<ActivitiesError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ActivitiesError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'ActivitiesState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $ActivitiesErrorCopyWith<$Res> implements $ActivitiesStateCopyWith<$Res> {
  factory $ActivitiesErrorCopyWith(ActivitiesError value, $Res Function(ActivitiesError) _then) = _$ActivitiesErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$ActivitiesErrorCopyWithImpl<$Res>
    implements $ActivitiesErrorCopyWith<$Res> {
  _$ActivitiesErrorCopyWithImpl(this._self, this._then);

  final ActivitiesError _self;
  final $Res Function(ActivitiesError) _then;

/// Create a copy of ActivitiesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(ActivitiesError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
