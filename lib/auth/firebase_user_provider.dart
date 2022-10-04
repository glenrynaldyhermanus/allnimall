import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class AllnimallFirebaseUser {
  AllnimallFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

AllnimallFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<AllnimallFirebaseUser> allnimallFirebaseUserStream() => FirebaseAuth
    .instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<AllnimallFirebaseUser>(
        (user) => currentUser = AllnimallFirebaseUser(user));
