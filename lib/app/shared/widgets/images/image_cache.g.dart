// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_cache.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$CacheImageCWProxy {
  CacheImage imageUrl(String imageUrl);

  CacheImage placeHolder(Widget? placeHolder);

  CacheImage alignment(Alignment? alignment);

  CacheImage key(Key? key);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `CacheImage(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// CacheImage(...).copyWith(id: 12, name: "My name")
  /// ````
  CacheImage call({
    String? imageUrl,
    Widget? placeHolder,
    Alignment? alignment,
    Key? key,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfCacheImage.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfCacheImage.copyWith.fieldName(...)`
class _$CacheImageCWProxyImpl implements _$CacheImageCWProxy {
  const _$CacheImageCWProxyImpl(this._value);

  final CacheImage _value;

  @override
  CacheImage imageUrl(String imageUrl) => this(imageUrl: imageUrl);

  @override
  CacheImage placeHolder(Widget? placeHolder) => this(placeHolder: placeHolder);

  @override
  CacheImage alignment(Alignment? alignment) => this(alignment: alignment);

  @override
  CacheImage key(Key? key) => this(key: key);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `CacheImage(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// CacheImage(...).copyWith(id: 12, name: "My name")
  /// ````
  CacheImage call({
    Object? imageUrl = const $CopyWithPlaceholder(),
    Object? placeHolder = const $CopyWithPlaceholder(),
    Object? alignment = const $CopyWithPlaceholder(),
    Object? key = const $CopyWithPlaceholder(),
  }) {
    return CacheImage(
      imageUrl: imageUrl == const $CopyWithPlaceholder() || imageUrl == null
          ? _value.imageUrl
          // ignore: cast_nullable_to_non_nullable
          : imageUrl as String,
      placeHolder: placeHolder == const $CopyWithPlaceholder()
          ? _value.placeHolder
          // ignore: cast_nullable_to_non_nullable
          : placeHolder as Widget?,
      alignment: alignment == const $CopyWithPlaceholder()
          ? _value.alignment
          // ignore: cast_nullable_to_non_nullable
          : alignment as Alignment?,
      key: key == const $CopyWithPlaceholder()
          ? _value.key
          // ignore: cast_nullable_to_non_nullable
          : key as Key?,
    );
  }
}

extension $CacheImageCopyWith on CacheImage {
  /// Returns a callable class that can be used as follows: `instanceOfCacheImage.copyWith(...)` or like so:`instanceOfCacheImage.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$CacheImageCWProxy get copyWith => _$CacheImageCWProxyImpl(this);
}
