import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class W8Pl8FirebaseUser {
  W8Pl8FirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

W8Pl8FirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<W8Pl8FirebaseUser> w8Pl8FirebaseUserStream() => FirebaseAuth.instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<W8Pl8FirebaseUser>((user) => currentUser = W8Pl8FirebaseUser(user));
