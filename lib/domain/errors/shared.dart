part of 'errors.dart';

class UnexpectedValueError extends Error {
  final ValueFailure valueFailure;

  UnexpectedValueError(this.valueFailure);

  @override
  String toString() {
    const explanation =
        'Encountered a ValueFailure at an unrecoverable point. Terminating.';
    return Error.safeToString('$explanation Failure was: $valueFailure');
  }
}

abstract class Failure {
  final String? prefix;
  final String? message;

  Failure({this.prefix, this.message});

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is Failure && o.prefix == prefix && o.message == message;
  }

  @override
  int get hashCode => prefix.hashCode ^ message.hashCode;

  @override
  String toString() => 'Failure(prefix: $prefix, message: $message)';
}

class ServerFailure extends Failure {}

class CacheFailure extends Failure {}

@freezed
class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.exceedingLength(
      {required T failedValue, required int max}) = ExceedingLength<T>;
  const factory ValueFailure.notAchievedLength(
      {required T failedValue, required int min}) = NotAchievedLength<T>;
  const factory ValueFailure.empty({required T failedValue}) = Empty<T>;
  const factory ValueFailure.numeric({required T failedValue}) = Numeric<T>;
  const factory ValueFailure.multiline({required T failedValue}) = Multiline<T>;
  const factory ValueFailure.listTooLong(
      {required T failedValue, required int max}) = ListTooLong<T>;
  const factory ValueFailure.invalidEmail({required T failedValue}) =
      InvalidEmail<T>;
  const factory ValueFailure.invalidPassword({required T failedValue}) =
      ShortPassword<T>;
  const factory ValueFailure.other({required T failedValue}) = Other<T>;
}
