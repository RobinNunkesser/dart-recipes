import 'package:bloc/bloc.dart';

class User {
  String forename = '';
  String surname = '';
  String get greeting => 'Hello $forename!';

  User({String forename = '', String surname = ''});

  User copyWith({
    String? forename,
    String? surname,
  }) {
    return User(
        forename: forename ?? this.forename, surname: surname ?? this.surname);
  }
}

class UserCubit extends Cubit<User> {
  UserCubit() : super(User());

  set forename(String newValue) {
    if (state.forename != newValue) {
      emit(state.copyWith(forename: newValue));
      state.forename = newValue;
      emit(state);
    }
  }

  set surname(String newValue) {
    if (state.surname != newValue) {
      emit(state.copyWith(surname: newValue));
      state.surname = newValue;
    }
  }
}
