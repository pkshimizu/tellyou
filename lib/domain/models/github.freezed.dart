// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'github.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GitHubAccount {

 int get id; String get login; String get name; String get htmlUrl; String get avatarUrl; String get pat; DateTime get patExpiredAt; List<GitHubOrganization> get organizations;
/// Create a copy of GitHubAccount
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GitHubAccountCopyWith<GitHubAccount> get copyWith => _$GitHubAccountCopyWithImpl<GitHubAccount>(this as GitHubAccount, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GitHubAccount&&(identical(other.id, id) || other.id == id)&&(identical(other.login, login) || other.login == login)&&(identical(other.name, name) || other.name == name)&&(identical(other.htmlUrl, htmlUrl) || other.htmlUrl == htmlUrl)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.pat, pat) || other.pat == pat)&&(identical(other.patExpiredAt, patExpiredAt) || other.patExpiredAt == patExpiredAt)&&const DeepCollectionEquality().equals(other.organizations, organizations));
}


@override
int get hashCode => Object.hash(runtimeType,id,login,name,htmlUrl,avatarUrl,pat,patExpiredAt,const DeepCollectionEquality().hash(organizations));

@override
String toString() {
  return 'GitHubAccount(id: $id, login: $login, name: $name, htmlUrl: $htmlUrl, avatarUrl: $avatarUrl, pat: $pat, patExpiredAt: $patExpiredAt, organizations: $organizations)';
}


}

/// @nodoc
abstract mixin class $GitHubAccountCopyWith<$Res>  {
  factory $GitHubAccountCopyWith(GitHubAccount value, $Res Function(GitHubAccount) _then) = _$GitHubAccountCopyWithImpl;
@useResult
$Res call({
 int id, String login, String name, String htmlUrl, String avatarUrl, String pat, DateTime patExpiredAt, List<GitHubOrganization> organizations
});




}
/// @nodoc
class _$GitHubAccountCopyWithImpl<$Res>
    implements $GitHubAccountCopyWith<$Res> {
  _$GitHubAccountCopyWithImpl(this._self, this._then);

  final GitHubAccount _self;
  final $Res Function(GitHubAccount) _then;

/// Create a copy of GitHubAccount
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? login = null,Object? name = null,Object? htmlUrl = null,Object? avatarUrl = null,Object? pat = null,Object? patExpiredAt = null,Object? organizations = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,login: null == login ? _self.login : login // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,htmlUrl: null == htmlUrl ? _self.htmlUrl : htmlUrl // ignore: cast_nullable_to_non_nullable
as String,avatarUrl: null == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String,pat: null == pat ? _self.pat : pat // ignore: cast_nullable_to_non_nullable
as String,patExpiredAt: null == patExpiredAt ? _self.patExpiredAt : patExpiredAt // ignore: cast_nullable_to_non_nullable
as DateTime,organizations: null == organizations ? _self.organizations : organizations // ignore: cast_nullable_to_non_nullable
as List<GitHubOrganization>,
  ));
}

}


/// Adds pattern-matching-related methods to [GitHubAccount].
extension GitHubAccountPatterns on GitHubAccount {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GitHubAccount value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GitHubAccount() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GitHubAccount value)  $default,){
final _that = this;
switch (_that) {
case _GitHubAccount():
return $default(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GitHubAccount value)?  $default,){
final _that = this;
switch (_that) {
case _GitHubAccount() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String login,  String name,  String htmlUrl,  String avatarUrl,  String pat,  DateTime patExpiredAt,  List<GitHubOrganization> organizations)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GitHubAccount() when $default != null:
return $default(_that.id,_that.login,_that.name,_that.htmlUrl,_that.avatarUrl,_that.pat,_that.patExpiredAt,_that.organizations);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String login,  String name,  String htmlUrl,  String avatarUrl,  String pat,  DateTime patExpiredAt,  List<GitHubOrganization> organizations)  $default,) {final _that = this;
switch (_that) {
case _GitHubAccount():
return $default(_that.id,_that.login,_that.name,_that.htmlUrl,_that.avatarUrl,_that.pat,_that.patExpiredAt,_that.organizations);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String login,  String name,  String htmlUrl,  String avatarUrl,  String pat,  DateTime patExpiredAt,  List<GitHubOrganization> organizations)?  $default,) {final _that = this;
switch (_that) {
case _GitHubAccount() when $default != null:
return $default(_that.id,_that.login,_that.name,_that.htmlUrl,_that.avatarUrl,_that.pat,_that.patExpiredAt,_that.organizations);case _:
  return null;

}
}

}

/// @nodoc


class _GitHubAccount extends GitHubAccount {
  const _GitHubAccount({required this.id, required this.login, required this.name, required this.htmlUrl, required this.avatarUrl, required this.pat, required this.patExpiredAt, final  List<GitHubOrganization> organizations = const []}): _organizations = organizations,super._();
  

@override final  int id;
@override final  String login;
@override final  String name;
@override final  String htmlUrl;
@override final  String avatarUrl;
@override final  String pat;
@override final  DateTime patExpiredAt;
 final  List<GitHubOrganization> _organizations;
@override@JsonKey() List<GitHubOrganization> get organizations {
  if (_organizations is EqualUnmodifiableListView) return _organizations;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_organizations);
}


/// Create a copy of GitHubAccount
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GitHubAccountCopyWith<_GitHubAccount> get copyWith => __$GitHubAccountCopyWithImpl<_GitHubAccount>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GitHubAccount&&(identical(other.id, id) || other.id == id)&&(identical(other.login, login) || other.login == login)&&(identical(other.name, name) || other.name == name)&&(identical(other.htmlUrl, htmlUrl) || other.htmlUrl == htmlUrl)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.pat, pat) || other.pat == pat)&&(identical(other.patExpiredAt, patExpiredAt) || other.patExpiredAt == patExpiredAt)&&const DeepCollectionEquality().equals(other._organizations, _organizations));
}


@override
int get hashCode => Object.hash(runtimeType,id,login,name,htmlUrl,avatarUrl,pat,patExpiredAt,const DeepCollectionEquality().hash(_organizations));

@override
String toString() {
  return 'GitHubAccount(id: $id, login: $login, name: $name, htmlUrl: $htmlUrl, avatarUrl: $avatarUrl, pat: $pat, patExpiredAt: $patExpiredAt, organizations: $organizations)';
}


}

/// @nodoc
abstract mixin class _$GitHubAccountCopyWith<$Res> implements $GitHubAccountCopyWith<$Res> {
  factory _$GitHubAccountCopyWith(_GitHubAccount value, $Res Function(_GitHubAccount) _then) = __$GitHubAccountCopyWithImpl;
@override @useResult
$Res call({
 int id, String login, String name, String htmlUrl, String avatarUrl, String pat, DateTime patExpiredAt, List<GitHubOrganization> organizations
});




}
/// @nodoc
class __$GitHubAccountCopyWithImpl<$Res>
    implements _$GitHubAccountCopyWith<$Res> {
  __$GitHubAccountCopyWithImpl(this._self, this._then);

  final _GitHubAccount _self;
  final $Res Function(_GitHubAccount) _then;

/// Create a copy of GitHubAccount
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? login = null,Object? name = null,Object? htmlUrl = null,Object? avatarUrl = null,Object? pat = null,Object? patExpiredAt = null,Object? organizations = null,}) {
  return _then(_GitHubAccount(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,login: null == login ? _self.login : login // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,htmlUrl: null == htmlUrl ? _self.htmlUrl : htmlUrl // ignore: cast_nullable_to_non_nullable
as String,avatarUrl: null == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String,pat: null == pat ? _self.pat : pat // ignore: cast_nullable_to_non_nullable
as String,patExpiredAt: null == patExpiredAt ? _self.patExpiredAt : patExpiredAt // ignore: cast_nullable_to_non_nullable
as DateTime,organizations: null == organizations ? _self._organizations : organizations // ignore: cast_nullable_to_non_nullable
as List<GitHubOrganization>,
  ));
}


}

/// @nodoc
mixin _$GitHubOrganization {

 int get id; int get accountId; String get login; String get htmlUrl; String get avatarUrl; List<GitHubRepository> get repositories;
/// Create a copy of GitHubOrganization
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GitHubOrganizationCopyWith<GitHubOrganization> get copyWith => _$GitHubOrganizationCopyWithImpl<GitHubOrganization>(this as GitHubOrganization, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GitHubOrganization&&(identical(other.id, id) || other.id == id)&&(identical(other.accountId, accountId) || other.accountId == accountId)&&(identical(other.login, login) || other.login == login)&&(identical(other.htmlUrl, htmlUrl) || other.htmlUrl == htmlUrl)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&const DeepCollectionEquality().equals(other.repositories, repositories));
}


@override
int get hashCode => Object.hash(runtimeType,id,accountId,login,htmlUrl,avatarUrl,const DeepCollectionEquality().hash(repositories));

@override
String toString() {
  return 'GitHubOrganization(id: $id, accountId: $accountId, login: $login, htmlUrl: $htmlUrl, avatarUrl: $avatarUrl, repositories: $repositories)';
}


}

/// @nodoc
abstract mixin class $GitHubOrganizationCopyWith<$Res>  {
  factory $GitHubOrganizationCopyWith(GitHubOrganization value, $Res Function(GitHubOrganization) _then) = _$GitHubOrganizationCopyWithImpl;
@useResult
$Res call({
 int id, int accountId, String login, String htmlUrl, String avatarUrl, List<GitHubRepository> repositories
});




}
/// @nodoc
class _$GitHubOrganizationCopyWithImpl<$Res>
    implements $GitHubOrganizationCopyWith<$Res> {
  _$GitHubOrganizationCopyWithImpl(this._self, this._then);

  final GitHubOrganization _self;
  final $Res Function(GitHubOrganization) _then;

/// Create a copy of GitHubOrganization
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? accountId = null,Object? login = null,Object? htmlUrl = null,Object? avatarUrl = null,Object? repositories = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,accountId: null == accountId ? _self.accountId : accountId // ignore: cast_nullable_to_non_nullable
as int,login: null == login ? _self.login : login // ignore: cast_nullable_to_non_nullable
as String,htmlUrl: null == htmlUrl ? _self.htmlUrl : htmlUrl // ignore: cast_nullable_to_non_nullable
as String,avatarUrl: null == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String,repositories: null == repositories ? _self.repositories : repositories // ignore: cast_nullable_to_non_nullable
as List<GitHubRepository>,
  ));
}

}


/// Adds pattern-matching-related methods to [GitHubOrganization].
extension GitHubOrganizationPatterns on GitHubOrganization {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GitHubOrganization value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GitHubOrganization() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GitHubOrganization value)  $default,){
final _that = this;
switch (_that) {
case _GitHubOrganization():
return $default(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GitHubOrganization value)?  $default,){
final _that = this;
switch (_that) {
case _GitHubOrganization() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int accountId,  String login,  String htmlUrl,  String avatarUrl,  List<GitHubRepository> repositories)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GitHubOrganization() when $default != null:
return $default(_that.id,_that.accountId,_that.login,_that.htmlUrl,_that.avatarUrl,_that.repositories);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int accountId,  String login,  String htmlUrl,  String avatarUrl,  List<GitHubRepository> repositories)  $default,) {final _that = this;
switch (_that) {
case _GitHubOrganization():
return $default(_that.id,_that.accountId,_that.login,_that.htmlUrl,_that.avatarUrl,_that.repositories);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int accountId,  String login,  String htmlUrl,  String avatarUrl,  List<GitHubRepository> repositories)?  $default,) {final _that = this;
switch (_that) {
case _GitHubOrganization() when $default != null:
return $default(_that.id,_that.accountId,_that.login,_that.htmlUrl,_that.avatarUrl,_that.repositories);case _:
  return null;

}
}

}

/// @nodoc


class _GitHubOrganization extends GitHubOrganization {
  const _GitHubOrganization({required this.id, required this.accountId, required this.login, required this.htmlUrl, required this.avatarUrl, final  List<GitHubRepository> repositories = const []}): _repositories = repositories,super._();
  

@override final  int id;
@override final  int accountId;
@override final  String login;
@override final  String htmlUrl;
@override final  String avatarUrl;
 final  List<GitHubRepository> _repositories;
@override@JsonKey() List<GitHubRepository> get repositories {
  if (_repositories is EqualUnmodifiableListView) return _repositories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_repositories);
}


/// Create a copy of GitHubOrganization
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GitHubOrganizationCopyWith<_GitHubOrganization> get copyWith => __$GitHubOrganizationCopyWithImpl<_GitHubOrganization>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GitHubOrganization&&(identical(other.id, id) || other.id == id)&&(identical(other.accountId, accountId) || other.accountId == accountId)&&(identical(other.login, login) || other.login == login)&&(identical(other.htmlUrl, htmlUrl) || other.htmlUrl == htmlUrl)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&const DeepCollectionEquality().equals(other._repositories, _repositories));
}


@override
int get hashCode => Object.hash(runtimeType,id,accountId,login,htmlUrl,avatarUrl,const DeepCollectionEquality().hash(_repositories));

@override
String toString() {
  return 'GitHubOrganization(id: $id, accountId: $accountId, login: $login, htmlUrl: $htmlUrl, avatarUrl: $avatarUrl, repositories: $repositories)';
}


}

/// @nodoc
abstract mixin class _$GitHubOrganizationCopyWith<$Res> implements $GitHubOrganizationCopyWith<$Res> {
  factory _$GitHubOrganizationCopyWith(_GitHubOrganization value, $Res Function(_GitHubOrganization) _then) = __$GitHubOrganizationCopyWithImpl;
@override @useResult
$Res call({
 int id, int accountId, String login, String htmlUrl, String avatarUrl, List<GitHubRepository> repositories
});




}
/// @nodoc
class __$GitHubOrganizationCopyWithImpl<$Res>
    implements _$GitHubOrganizationCopyWith<$Res> {
  __$GitHubOrganizationCopyWithImpl(this._self, this._then);

  final _GitHubOrganization _self;
  final $Res Function(_GitHubOrganization) _then;

/// Create a copy of GitHubOrganization
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? accountId = null,Object? login = null,Object? htmlUrl = null,Object? avatarUrl = null,Object? repositories = null,}) {
  return _then(_GitHubOrganization(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,accountId: null == accountId ? _self.accountId : accountId // ignore: cast_nullable_to_non_nullable
as int,login: null == login ? _self.login : login // ignore: cast_nullable_to_non_nullable
as String,htmlUrl: null == htmlUrl ? _self.htmlUrl : htmlUrl // ignore: cast_nullable_to_non_nullable
as String,avatarUrl: null == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String,repositories: null == repositories ? _self._repositories : repositories // ignore: cast_nullable_to_non_nullable
as List<GitHubRepository>,
  ));
}


}

/// @nodoc
mixin _$GitHubRepository {

 int get id; int get organizationId; String get name; String get htmlUrl; String get avatarUrl;
/// Create a copy of GitHubRepository
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GitHubRepositoryCopyWith<GitHubRepository> get copyWith => _$GitHubRepositoryCopyWithImpl<GitHubRepository>(this as GitHubRepository, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GitHubRepository&&(identical(other.id, id) || other.id == id)&&(identical(other.organizationId, organizationId) || other.organizationId == organizationId)&&(identical(other.name, name) || other.name == name)&&(identical(other.htmlUrl, htmlUrl) || other.htmlUrl == htmlUrl)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl));
}


@override
int get hashCode => Object.hash(runtimeType,id,organizationId,name,htmlUrl,avatarUrl);

@override
String toString() {
  return 'GitHubRepository(id: $id, organizationId: $organizationId, name: $name, htmlUrl: $htmlUrl, avatarUrl: $avatarUrl)';
}


}

/// @nodoc
abstract mixin class $GitHubRepositoryCopyWith<$Res>  {
  factory $GitHubRepositoryCopyWith(GitHubRepository value, $Res Function(GitHubRepository) _then) = _$GitHubRepositoryCopyWithImpl;
@useResult
$Res call({
 int id, int organizationId, String name, String htmlUrl, String avatarUrl
});




}
/// @nodoc
class _$GitHubRepositoryCopyWithImpl<$Res>
    implements $GitHubRepositoryCopyWith<$Res> {
  _$GitHubRepositoryCopyWithImpl(this._self, this._then);

  final GitHubRepository _self;
  final $Res Function(GitHubRepository) _then;

/// Create a copy of GitHubRepository
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? organizationId = null,Object? name = null,Object? htmlUrl = null,Object? avatarUrl = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,organizationId: null == organizationId ? _self.organizationId : organizationId // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,htmlUrl: null == htmlUrl ? _self.htmlUrl : htmlUrl // ignore: cast_nullable_to_non_nullable
as String,avatarUrl: null == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [GitHubRepository].
extension GitHubRepositoryPatterns on GitHubRepository {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GitHubRepository value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GitHubRepository() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GitHubRepository value)  $default,){
final _that = this;
switch (_that) {
case _GitHubRepository():
return $default(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GitHubRepository value)?  $default,){
final _that = this;
switch (_that) {
case _GitHubRepository() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int organizationId,  String name,  String htmlUrl,  String avatarUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GitHubRepository() when $default != null:
return $default(_that.id,_that.organizationId,_that.name,_that.htmlUrl,_that.avatarUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int organizationId,  String name,  String htmlUrl,  String avatarUrl)  $default,) {final _that = this;
switch (_that) {
case _GitHubRepository():
return $default(_that.id,_that.organizationId,_that.name,_that.htmlUrl,_that.avatarUrl);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int organizationId,  String name,  String htmlUrl,  String avatarUrl)?  $default,) {final _that = this;
switch (_that) {
case _GitHubRepository() when $default != null:
return $default(_that.id,_that.organizationId,_that.name,_that.htmlUrl,_that.avatarUrl);case _:
  return null;

}
}

}

/// @nodoc


class _GitHubRepository extends GitHubRepository {
  const _GitHubRepository({required this.id, required this.organizationId, required this.name, required this.htmlUrl, required this.avatarUrl}): super._();
  

@override final  int id;
@override final  int organizationId;
@override final  String name;
@override final  String htmlUrl;
@override final  String avatarUrl;

/// Create a copy of GitHubRepository
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GitHubRepositoryCopyWith<_GitHubRepository> get copyWith => __$GitHubRepositoryCopyWithImpl<_GitHubRepository>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GitHubRepository&&(identical(other.id, id) || other.id == id)&&(identical(other.organizationId, organizationId) || other.organizationId == organizationId)&&(identical(other.name, name) || other.name == name)&&(identical(other.htmlUrl, htmlUrl) || other.htmlUrl == htmlUrl)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl));
}


@override
int get hashCode => Object.hash(runtimeType,id,organizationId,name,htmlUrl,avatarUrl);

@override
String toString() {
  return 'GitHubRepository(id: $id, organizationId: $organizationId, name: $name, htmlUrl: $htmlUrl, avatarUrl: $avatarUrl)';
}


}

/// @nodoc
abstract mixin class _$GitHubRepositoryCopyWith<$Res> implements $GitHubRepositoryCopyWith<$Res> {
  factory _$GitHubRepositoryCopyWith(_GitHubRepository value, $Res Function(_GitHubRepository) _then) = __$GitHubRepositoryCopyWithImpl;
@override @useResult
$Res call({
 int id, int organizationId, String name, String htmlUrl, String avatarUrl
});




}
/// @nodoc
class __$GitHubRepositoryCopyWithImpl<$Res>
    implements _$GitHubRepositoryCopyWith<$Res> {
  __$GitHubRepositoryCopyWithImpl(this._self, this._then);

  final _GitHubRepository _self;
  final $Res Function(_GitHubRepository) _then;

/// Create a copy of GitHubRepository
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? organizationId = null,Object? name = null,Object? htmlUrl = null,Object? avatarUrl = null,}) {
  return _then(_GitHubRepository(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,organizationId: null == organizationId ? _self.organizationId : organizationId // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,htmlUrl: null == htmlUrl ? _self.htmlUrl : htmlUrl // ignore: cast_nullable_to_non_nullable
as String,avatarUrl: null == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
