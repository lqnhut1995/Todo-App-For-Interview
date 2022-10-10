part of 'shared.dart';

class EnumValues<T> {
  final Map<String, T> map;
  Map<T, String>? reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => MapEntry(v, k));
    }
    return reverseMap!;
  }
}

class Pagination<T> {
  final int page;
  final int perPage;
  final int pageCount;
  final int totalCount;
  final List<T> data;

  Pagination({
    required this.page,
    required this.perPage,
    required this.pageCount,
    required this.totalCount,
    required this.data,
  });

  Pagination<T> copyWith({
    int? page,
    int? perPage,
    int? pageCount,
    int? totalCount,
    List<T>? data,
  }) {
    return Pagination<T>(
      page: page ?? this.page,
      perPage: perPage ?? this.perPage,
      pageCount: pageCount ?? this.pageCount,
      totalCount: totalCount ?? this.totalCount,
      data: data ?? this.data,
    );
  }

  @override
  String toString() {
    return 'Pagination(page: $page, perPage: $perPage, pageCount: $pageCount, totalCount: $totalCount, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Pagination<T> &&
        other.page == page &&
        other.perPage == perPage &&
        other.pageCount == pageCount &&
        other.totalCount == totalCount &&
        listEquals(other.data, data);
  }

  @override
  int get hashCode {
    return page.hashCode ^
        perPage.hashCode ^
        pageCount.hashCode ^
        totalCount.hashCode ^
        data.hashCode;
  }
}

@freezed
class Notification with _$Notification {
  const Notification._();
  const factory Notification({
    int? id,
    String? title,
    String? body,
    String? payload,
  }) = _Notification;

  factory Notification.fromJson(Map<String, dynamic> json) =>
      _$NotificationFromJson(json);

  factory Notification.fromString(String args) {
    return Notification.fromJson(jsonDecode(args));
  }

  String encode() => jsonEncode(toJson());
}
