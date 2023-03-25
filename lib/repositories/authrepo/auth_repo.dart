import 'package:firebase_auth/firebase_auth.dart';

class AuthRepository{
  final _firebaseauth = FirebaseAuth.instance;
  Future<void> signUp ({required String email, required String password,required String phoneNumber}) async{
   try{
     FirebaseAuth.instance.signInWithEmailAndPassword(
         email: email,
         password: password,
     );
     FirebaseAuth.instance.signInWithPhoneNumber(phoneNumber);
   } catch(e){
     e.toString();
   }
  }
}