part of 'value_objects.dart';

@freezed
class AsyncStatus with _$AsyncStatus {
  const factory AsyncStatus.idle() = _Idle;
  const factory AsyncStatus.busy() = _Busy;
  const factory AsyncStatus.failed() = _Failed;
  const factory AsyncStatus.complete() = _Complete;
}

Either<ValueFailure<String>?, String> validateMaxStringLength(
    String input, int maxLength) {
  if (input.length <= maxLength) {
    return right(input);
  } else {
    return left(
      ValueFailure.exceedingLength(failedValue: input, max: maxLength),
    );
  }
}

Either<ValueFailure<String>?, String> validateMinStringLength(
    String input, int minLength) {
  if (input.length >= minLength) {
    return right(input);
  } else {
    return left(
      ValueFailure.notAchievedLength(failedValue: input, min: minLength),
    );
  }
}

Either<ValueFailure<String>?, String> validateStringNotEmpty(String input) {
  if (input.isNotEmpty) {
    return right(input);
  } else {
    return left(ValueFailure.empty(failedValue: input));
  }
}

Either<ValueFailure<String>?, String> validateSingleLine(String input) {
  if (input.contains('\n')) {
    return left(ValueFailure.multiline(failedValue: input));
  } else {
    return right(input);
  }
}

Either<ValueFailure<List<T>>, List<T>> validateMaxListLength<T>(
  List<T> input,
  int maxLength,
) {
  if (input.length <= maxLength) {
    return right(input);
  } else {
    return left(
      ValueFailure.listTooLong(failedValue: input, max: maxLength),
    );
  }
}

Either<ValueFailure<String>?, String> validateIsNumeric(String input) {
  const numericRegex = r'^-?(([0-9]*)|(([0-9]*)\.([0-9]*)))$';
  if (RegExp(numericRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.numeric(failedValue: input));
  }
}

Either<ValueFailure<String>?, String> validateEmailAddress(String input) {
  const _regex =
      r'^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$';
  if (RegExp(_regex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidEmail(failedValue: input));
  }
}

Either<ValueFailure<String>?, String> validatePassword(String input) {
  const _regex = r'^.{8,}$';

  if (RegExp(_regex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidPassword(failedValue: input));
  }
}

Either<ValueFailure<String>?, String> validateIsAlphabet(String input) {
  const numericRegex = r'^[a-zA-Z ]*$';
  if (RegExp(numericRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.numeric(failedValue: input));
  }
}

class Password extends FormzInput<String, ValueFailure<String>> {
  const Password.pure([String value = '']) : super.pure(value);
  const Password.dirty([String value = '']) : super.dirty(value);

  static const minLength = 8;
  static const maxLength = 15;

  factory Password(String input) => Password.pure(input);

  @override
  ValueFailure<String>? validator(String input) {
    return validateStringNotEmpty(input)
        .flatMap((v) => validateMinStringLength(input, minLength))
        .flatMap(validatePassword)
        .fold(
          (l) => l,
          (r) => null,
        );
  }
}

class Email extends FormzInput<String, ValueFailure<String>> {
  const Email.pure([String value = '']) : super.pure(value);
  const Email.dirty([String value = '']) : super.dirty(value);

  static const maxLength = 15;

  factory Email(String input) => Email.pure(input);

  @override
  ValueFailure<String>? validator(String input) {
    return validateStringNotEmpty(input).flatMap(validateEmailAddress).fold(
          (l) => l,
          (r) => null,
        );
  }
}

class Phone extends FormzInput<String, ValueFailure<String>> {
  const Phone.pure([String value = '']) : super.pure(value);
  const Phone.dirty([String value = '']) : super.dirty(value);

  static const maxLength = 15;
  static const minLength = 0;

  factory Phone(String input) => Phone.pure(input);

  @override
  ValueFailure<String>? validator(String input) {
    return validateStringNotEmpty(input)
        .flatMap(validateSingleLine)
        .flatMap((v) => validateMinStringLength(input, minLength))
        .flatMap((v) => validateMaxStringLength(input, maxLength))
        .flatMap(validateIsNumeric)
        .fold(
          (l) => l,
          (r) => null,
        );
  }
}

class Name extends FormzInput<String, ValueFailure<String>> {
  const Name.pure([String value = '']) : super.pure(value);
  const Name.dirty([String value = '']) : super.dirty(value);

  static const maxLength = 50;

  factory Name(String input) => Name.pure(input);

  @override
  ValueFailure<String>? validator(String input) {
    return validateStringNotEmpty(input)
        .flatMap(validateSingleLine)
        .flatMap((v) => validateMaxStringLength(input, maxLength))
        .fold(
          (l) => l,
          (r) => null,
        );
  }
}

class FullName extends FormzInput<String, ValueFailure<String>> {
  const FullName.pure([String value = '']) : super.pure(value);
  const FullName.dirty([String value = '']) : super.dirty(value);

  static const maxLength = 100;

  factory FullName(String input) => FullName.pure(input);

  @override
  ValueFailure<String>? validator(String input) {
    return validateStringNotEmpty(input)
        .flatMap(validateSingleLine)
        .flatMap((v) => validateMaxStringLength(input, maxLength))
        .fold(
          (l) => l,
          (r) => null,
        );
  }
}

class Validity extends FormzInput<String, ValueFailure<String>> {
  const Validity.dirty([String value = '']) : super.dirty(value);
  const Validity.pure([String value = '']) : super.pure(value);

  DateTime? get date {
    try {
      final numbers = value.substring(0, 5).split('/');
      final month = int.parse(numbers.first);
      final year = int.parse('20${numbers.last}');
      if (month > 12 || month < 0) return null;
      return DateTime(year, month);
    } catch (e) {
      print(e);
      return null;
    }
  }

  static const maxLength = 5;

  factory Validity(String input) => Validity.pure(input);

  Either<ValueFailure<String>?, String> validateInput(String input) {
    try {
      final numbers = input.split('/');
      final month = int.parse(numbers.first);
      final year = int.parse('20${numbers.last}');
      if (month > 12 || month < 0) {
        return left(ValueFailure.other(failedValue: input));
      }
      final validDate = DateTime(year, month);
      final def = validDate.difference(DateTime.now());
      if ((def.inDays + 30) < 0) {
        return left(ValueFailure.other(failedValue: input));
      }
      return right(input);
    } catch (e) {
      print(e);
      return left(ValueFailure.other(failedValue: input));
    }
  }

  @override
  ValueFailure<String>? validator(String input) {
    return validateStringNotEmpty(input)
        .flatMap(validateSingleLine)
        .flatMap((v) => validateMaxStringLength(input, maxLength))
        .flatMap(validateInput)
        .fold(
          (l) => l,
          (r) => null,
        );
  }
}
