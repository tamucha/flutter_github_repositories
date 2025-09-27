// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../model/repository/github_repository.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GithubRepository {

// ID
 int get id;// リポジトリ名
 String get name;// オーナー
 Owner get owner;// プロジェクト言語
 String? get language;// Star 数
 int? get stargazersCount;// Watcher 数
 int? get watchersCount;// Fork 数
 int? get forksCount;// Issue 数
 int? get openIssuesCount;
/// Create a copy of GithubRepository
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GithubRepositoryCopyWith<GithubRepository> get copyWith => _$GithubRepositoryCopyWithImpl<GithubRepository>(this as GithubRepository, _$identity);

  /// Serializes this GithubRepository to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GithubRepository&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.owner, owner) || other.owner == owner)&&(identical(other.language, language) || other.language == language)&&(identical(other.stargazersCount, stargazersCount) || other.stargazersCount == stargazersCount)&&(identical(other.watchersCount, watchersCount) || other.watchersCount == watchersCount)&&(identical(other.forksCount, forksCount) || other.forksCount == forksCount)&&(identical(other.openIssuesCount, openIssuesCount) || other.openIssuesCount == openIssuesCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,owner,language,stargazersCount,watchersCount,forksCount,openIssuesCount);

@override
String toString() {
  return 'GithubRepository(id: $id, name: $name, owner: $owner, language: $language, stargazersCount: $stargazersCount, watchersCount: $watchersCount, forksCount: $forksCount, openIssuesCount: $openIssuesCount)';
}


}

/// @nodoc
abstract mixin class $GithubRepositoryCopyWith<$Res>  {
  factory $GithubRepositoryCopyWith(GithubRepository value, $Res Function(GithubRepository) _then) = _$GithubRepositoryCopyWithImpl;
@useResult
$Res call({
 int id, String name, Owner owner, String? language, int? stargazersCount, int? watchersCount, int? forksCount, int? openIssuesCount
});


$OwnerCopyWith<$Res> get owner;

}
/// @nodoc
class _$GithubRepositoryCopyWithImpl<$Res>
    implements $GithubRepositoryCopyWith<$Res> {
  _$GithubRepositoryCopyWithImpl(this._self, this._then);

  final GithubRepository _self;
  final $Res Function(GithubRepository) _then;

/// Create a copy of GithubRepository
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? owner = null,Object? language = freezed,Object? stargazersCount = freezed,Object? watchersCount = freezed,Object? forksCount = freezed,Object? openIssuesCount = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,owner: null == owner ? _self.owner : owner // ignore: cast_nullable_to_non_nullable
as Owner,language: freezed == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String?,stargazersCount: freezed == stargazersCount ? _self.stargazersCount : stargazersCount // ignore: cast_nullable_to_non_nullable
as int?,watchersCount: freezed == watchersCount ? _self.watchersCount : watchersCount // ignore: cast_nullable_to_non_nullable
as int?,forksCount: freezed == forksCount ? _self.forksCount : forksCount // ignore: cast_nullable_to_non_nullable
as int?,openIssuesCount: freezed == openIssuesCount ? _self.openIssuesCount : openIssuesCount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}
/// Create a copy of GithubRepository
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OwnerCopyWith<$Res> get owner {
  
  return $OwnerCopyWith<$Res>(_self.owner, (value) {
    return _then(_self.copyWith(owner: value));
  });
}
}


/// Adds pattern-matching-related methods to [GithubRepository].
extension GithubRepositoryPatterns on GithubRepository {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GithubRepository value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GithubRepository() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GithubRepository value)  $default,){
final _that = this;
switch (_that) {
case _GithubRepository():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GithubRepository value)?  $default,){
final _that = this;
switch (_that) {
case _GithubRepository() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  Owner owner,  String? language,  int? stargazersCount,  int? watchersCount,  int? forksCount,  int? openIssuesCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GithubRepository() when $default != null:
return $default(_that.id,_that.name,_that.owner,_that.language,_that.stargazersCount,_that.watchersCount,_that.forksCount,_that.openIssuesCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  Owner owner,  String? language,  int? stargazersCount,  int? watchersCount,  int? forksCount,  int? openIssuesCount)  $default,) {final _that = this;
switch (_that) {
case _GithubRepository():
return $default(_that.id,_that.name,_that.owner,_that.language,_that.stargazersCount,_that.watchersCount,_that.forksCount,_that.openIssuesCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  Owner owner,  String? language,  int? stargazersCount,  int? watchersCount,  int? forksCount,  int? openIssuesCount)?  $default,) {final _that = this;
switch (_that) {
case _GithubRepository() when $default != null:
return $default(_that.id,_that.name,_that.owner,_that.language,_that.stargazersCount,_that.watchersCount,_that.forksCount,_that.openIssuesCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GithubRepository implements GithubRepository {
  const _GithubRepository({required this.id, required this.name, required this.owner, required this.language, required this.stargazersCount, required this.watchersCount, required this.forksCount, required this.openIssuesCount});
  factory _GithubRepository.fromJson(Map<String, dynamic> json) => _$GithubRepositoryFromJson(json);

// ID
@override final  int id;
// リポジトリ名
@override final  String name;
// オーナー
@override final  Owner owner;
// プロジェクト言語
@override final  String? language;
// Star 数
@override final  int? stargazersCount;
// Watcher 数
@override final  int? watchersCount;
// Fork 数
@override final  int? forksCount;
// Issue 数
@override final  int? openIssuesCount;

/// Create a copy of GithubRepository
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GithubRepositoryCopyWith<_GithubRepository> get copyWith => __$GithubRepositoryCopyWithImpl<_GithubRepository>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GithubRepositoryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GithubRepository&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.owner, owner) || other.owner == owner)&&(identical(other.language, language) || other.language == language)&&(identical(other.stargazersCount, stargazersCount) || other.stargazersCount == stargazersCount)&&(identical(other.watchersCount, watchersCount) || other.watchersCount == watchersCount)&&(identical(other.forksCount, forksCount) || other.forksCount == forksCount)&&(identical(other.openIssuesCount, openIssuesCount) || other.openIssuesCount == openIssuesCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,owner,language,stargazersCount,watchersCount,forksCount,openIssuesCount);

@override
String toString() {
  return 'GithubRepository(id: $id, name: $name, owner: $owner, language: $language, stargazersCount: $stargazersCount, watchersCount: $watchersCount, forksCount: $forksCount, openIssuesCount: $openIssuesCount)';
}


}

/// @nodoc
abstract mixin class _$GithubRepositoryCopyWith<$Res> implements $GithubRepositoryCopyWith<$Res> {
  factory _$GithubRepositoryCopyWith(_GithubRepository value, $Res Function(_GithubRepository) _then) = __$GithubRepositoryCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, Owner owner, String? language, int? stargazersCount, int? watchersCount, int? forksCount, int? openIssuesCount
});


@override $OwnerCopyWith<$Res> get owner;

}
/// @nodoc
class __$GithubRepositoryCopyWithImpl<$Res>
    implements _$GithubRepositoryCopyWith<$Res> {
  __$GithubRepositoryCopyWithImpl(this._self, this._then);

  final _GithubRepository _self;
  final $Res Function(_GithubRepository) _then;

/// Create a copy of GithubRepository
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? owner = null,Object? language = freezed,Object? stargazersCount = freezed,Object? watchersCount = freezed,Object? forksCount = freezed,Object? openIssuesCount = freezed,}) {
  return _then(_GithubRepository(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,owner: null == owner ? _self.owner : owner // ignore: cast_nullable_to_non_nullable
as Owner,language: freezed == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String?,stargazersCount: freezed == stargazersCount ? _self.stargazersCount : stargazersCount // ignore: cast_nullable_to_non_nullable
as int?,watchersCount: freezed == watchersCount ? _self.watchersCount : watchersCount // ignore: cast_nullable_to_non_nullable
as int?,forksCount: freezed == forksCount ? _self.forksCount : forksCount // ignore: cast_nullable_to_non_nullable
as int?,openIssuesCount: freezed == openIssuesCount ? _self.openIssuesCount : openIssuesCount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

/// Create a copy of GithubRepository
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OwnerCopyWith<$Res> get owner {
  
  return $OwnerCopyWith<$Res>(_self.owner, (value) {
    return _then(_self.copyWith(owner: value));
  });
}
}


/// @nodoc
mixin _$Owner {

 int get id; Uri? get avatarUrl;
/// Create a copy of Owner
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OwnerCopyWith<Owner> get copyWith => _$OwnerCopyWithImpl<Owner>(this as Owner, _$identity);

  /// Serializes this Owner to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Owner&&(identical(other.id, id) || other.id == id)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,avatarUrl);

@override
String toString() {
  return 'Owner(id: $id, avatarUrl: $avatarUrl)';
}


}

/// @nodoc
abstract mixin class $OwnerCopyWith<$Res>  {
  factory $OwnerCopyWith(Owner value, $Res Function(Owner) _then) = _$OwnerCopyWithImpl;
@useResult
$Res call({
 int id, Uri? avatarUrl
});




}
/// @nodoc
class _$OwnerCopyWithImpl<$Res>
    implements $OwnerCopyWith<$Res> {
  _$OwnerCopyWithImpl(this._self, this._then);

  final Owner _self;
  final $Res Function(Owner) _then;

/// Create a copy of Owner
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? avatarUrl = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,avatarUrl: freezed == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as Uri?,
  ));
}

}


/// Adds pattern-matching-related methods to [Owner].
extension OwnerPatterns on Owner {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Owner value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Owner() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Owner value)  $default,){
final _that = this;
switch (_that) {
case _Owner():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Owner value)?  $default,){
final _that = this;
switch (_that) {
case _Owner() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  Uri? avatarUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Owner() when $default != null:
return $default(_that.id,_that.avatarUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  Uri? avatarUrl)  $default,) {final _that = this;
switch (_that) {
case _Owner():
return $default(_that.id,_that.avatarUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  Uri? avatarUrl)?  $default,) {final _that = this;
switch (_that) {
case _Owner() when $default != null:
return $default(_that.id,_that.avatarUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Owner implements Owner {
  const _Owner({required this.id, required this.avatarUrl});
  factory _Owner.fromJson(Map<String, dynamic> json) => _$OwnerFromJson(json);

@override final  int id;
@override final  Uri? avatarUrl;

/// Create a copy of Owner
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OwnerCopyWith<_Owner> get copyWith => __$OwnerCopyWithImpl<_Owner>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OwnerToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Owner&&(identical(other.id, id) || other.id == id)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,avatarUrl);

@override
String toString() {
  return 'Owner(id: $id, avatarUrl: $avatarUrl)';
}


}

/// @nodoc
abstract mixin class _$OwnerCopyWith<$Res> implements $OwnerCopyWith<$Res> {
  factory _$OwnerCopyWith(_Owner value, $Res Function(_Owner) _then) = __$OwnerCopyWithImpl;
@override @useResult
$Res call({
 int id, Uri? avatarUrl
});




}
/// @nodoc
class __$OwnerCopyWithImpl<$Res>
    implements _$OwnerCopyWith<$Res> {
  __$OwnerCopyWithImpl(this._self, this._then);

  final _Owner _self;
  final $Res Function(_Owner) _then;

/// Create a copy of Owner
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? avatarUrl = freezed,}) {
  return _then(_Owner(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,avatarUrl: freezed == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as Uri?,
  ));
}


}


/// @nodoc
mixin _$SearchGithubRepositoryResult {

 String? get keyword; int get page; int get totalCount; bool? get incompleteResults; List<GithubRepository> get items;
/// Create a copy of SearchGithubRepositoryResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchGithubRepositoryResultCopyWith<SearchGithubRepositoryResult> get copyWith => _$SearchGithubRepositoryResultCopyWithImpl<SearchGithubRepositoryResult>(this as SearchGithubRepositoryResult, _$identity);

  /// Serializes this SearchGithubRepositoryResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchGithubRepositoryResult&&(identical(other.keyword, keyword) || other.keyword == keyword)&&(identical(other.page, page) || other.page == page)&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount)&&(identical(other.incompleteResults, incompleteResults) || other.incompleteResults == incompleteResults)&&const DeepCollectionEquality().equals(other.items, items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,keyword,page,totalCount,incompleteResults,const DeepCollectionEquality().hash(items));

@override
String toString() {
  return 'SearchGithubRepositoryResult(keyword: $keyword, page: $page, totalCount: $totalCount, incompleteResults: $incompleteResults, items: $items)';
}


}

/// @nodoc
abstract mixin class $SearchGithubRepositoryResultCopyWith<$Res>  {
  factory $SearchGithubRepositoryResultCopyWith(SearchGithubRepositoryResult value, $Res Function(SearchGithubRepositoryResult) _then) = _$SearchGithubRepositoryResultCopyWithImpl;
@useResult
$Res call({
 String? keyword, int page, int totalCount, bool? incompleteResults, List<GithubRepository> items
});




}
/// @nodoc
class _$SearchGithubRepositoryResultCopyWithImpl<$Res>
    implements $SearchGithubRepositoryResultCopyWith<$Res> {
  _$SearchGithubRepositoryResultCopyWithImpl(this._self, this._then);

  final SearchGithubRepositoryResult _self;
  final $Res Function(SearchGithubRepositoryResult) _then;

/// Create a copy of SearchGithubRepositoryResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? keyword = freezed,Object? page = null,Object? totalCount = null,Object? incompleteResults = freezed,Object? items = null,}) {
  return _then(_self.copyWith(
keyword: freezed == keyword ? _self.keyword : keyword // ignore: cast_nullable_to_non_nullable
as String?,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,totalCount: null == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int,incompleteResults: freezed == incompleteResults ? _self.incompleteResults : incompleteResults // ignore: cast_nullable_to_non_nullable
as bool?,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<GithubRepository>,
  ));
}

}


/// Adds pattern-matching-related methods to [SearchGithubRepositoryResult].
extension SearchGithubRepositoryResultPatterns on SearchGithubRepositoryResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchGithubRepositoryResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchGithubRepositoryResult() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchGithubRepositoryResult value)  $default,){
final _that = this;
switch (_that) {
case _SearchGithubRepositoryResult():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchGithubRepositoryResult value)?  $default,){
final _that = this;
switch (_that) {
case _SearchGithubRepositoryResult() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? keyword,  int page,  int totalCount,  bool? incompleteResults,  List<GithubRepository> items)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchGithubRepositoryResult() when $default != null:
return $default(_that.keyword,_that.page,_that.totalCount,_that.incompleteResults,_that.items);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? keyword,  int page,  int totalCount,  bool? incompleteResults,  List<GithubRepository> items)  $default,) {final _that = this;
switch (_that) {
case _SearchGithubRepositoryResult():
return $default(_that.keyword,_that.page,_that.totalCount,_that.incompleteResults,_that.items);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? keyword,  int page,  int totalCount,  bool? incompleteResults,  List<GithubRepository> items)?  $default,) {final _that = this;
switch (_that) {
case _SearchGithubRepositoryResult() when $default != null:
return $default(_that.keyword,_that.page,_that.totalCount,_that.incompleteResults,_that.items);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SearchGithubRepositoryResult implements SearchGithubRepositoryResult {
  const _SearchGithubRepositoryResult({required this.keyword, this.page = 1, this.totalCount = 0, required this.incompleteResults, final  List<GithubRepository> items = const []}): _items = items;
  factory _SearchGithubRepositoryResult.fromJson(Map<String, dynamic> json) => _$SearchGithubRepositoryResultFromJson(json);

@override final  String? keyword;
@override@JsonKey() final  int page;
@override@JsonKey() final  int totalCount;
@override final  bool? incompleteResults;
 final  List<GithubRepository> _items;
@override@JsonKey() List<GithubRepository> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}


/// Create a copy of SearchGithubRepositoryResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchGithubRepositoryResultCopyWith<_SearchGithubRepositoryResult> get copyWith => __$SearchGithubRepositoryResultCopyWithImpl<_SearchGithubRepositoryResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SearchGithubRepositoryResultToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchGithubRepositoryResult&&(identical(other.keyword, keyword) || other.keyword == keyword)&&(identical(other.page, page) || other.page == page)&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount)&&(identical(other.incompleteResults, incompleteResults) || other.incompleteResults == incompleteResults)&&const DeepCollectionEquality().equals(other._items, _items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,keyword,page,totalCount,incompleteResults,const DeepCollectionEquality().hash(_items));

@override
String toString() {
  return 'SearchGithubRepositoryResult(keyword: $keyword, page: $page, totalCount: $totalCount, incompleteResults: $incompleteResults, items: $items)';
}


}

/// @nodoc
abstract mixin class _$SearchGithubRepositoryResultCopyWith<$Res> implements $SearchGithubRepositoryResultCopyWith<$Res> {
  factory _$SearchGithubRepositoryResultCopyWith(_SearchGithubRepositoryResult value, $Res Function(_SearchGithubRepositoryResult) _then) = __$SearchGithubRepositoryResultCopyWithImpl;
@override @useResult
$Res call({
 String? keyword, int page, int totalCount, bool? incompleteResults, List<GithubRepository> items
});




}
/// @nodoc
class __$SearchGithubRepositoryResultCopyWithImpl<$Res>
    implements _$SearchGithubRepositoryResultCopyWith<$Res> {
  __$SearchGithubRepositoryResultCopyWithImpl(this._self, this._then);

  final _SearchGithubRepositoryResult _self;
  final $Res Function(_SearchGithubRepositoryResult) _then;

/// Create a copy of SearchGithubRepositoryResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? keyword = freezed,Object? page = null,Object? totalCount = null,Object? incompleteResults = freezed,Object? items = null,}) {
  return _then(_SearchGithubRepositoryResult(
keyword: freezed == keyword ? _self.keyword : keyword // ignore: cast_nullable_to_non_nullable
as String?,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,totalCount: null == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int,incompleteResults: freezed == incompleteResults ? _self.incompleteResults : incompleteResults // ignore: cast_nullable_to_non_nullable
as bool?,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<GithubRepository>,
  ));
}


}

// dart format on
