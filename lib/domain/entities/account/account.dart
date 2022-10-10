/* spell-checker: disable */
part of 'entities.dart';

@freezed
class AuthStatus with _$AuthStatus {
  const factory AuthStatus.unknown() = Unknown;
  const factory AuthStatus.authenticated() = Authenticated;
  const factory AuthStatus.unauthenticated() = Unauthenticated;
}
