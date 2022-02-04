import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

class User extends Equatable {
  final String forename;
  final String surname;
  String get greeting => 'Hello $forename!';

  const User({this.forename = '', this.surname = ''});

  User copyWith({
    String? forename,
    String? surname,
  }) =>
      User(
          forename: forename ?? this.forename,
          surname: surname ?? this.surname);

  @override
  List<Object?> get props => [forename, surname];
}

class UserCubit extends Cubit<User> {
  UserCubit() : super(const User());

  set forename(String newValue) {
    if (state.forename != newValue) {
      emit(state.copyWith(forename: newValue));
    }
  }

  set surname(String newValue) {
    if (state.surname != newValue) {
      emit(state.copyWith(surname: newValue));
    }
  }
}
