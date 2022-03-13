// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contentfulblog.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ContentfulBlog _$$_ContentfulBlogFromJson(Map<String, dynamic> json) =>
    _$_ContentfulBlog(
      title: json['title'] as String,
      date: DateTime.parse(json['date'] as String),
      information: json['information'] as String?,
      image: json['image'],
    );

Map<String, dynamic> _$$_ContentfulBlogToJson(_$_ContentfulBlog instance) =>
    <String, dynamic>{
      'title': instance.title,
      'date': instance.date.toIso8601String(),
      'information': instance.information,
      'image': instance.image,
    };
