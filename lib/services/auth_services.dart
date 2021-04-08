part of 'services.dart';

class AuthServices{
  static FirebaseAuth _auth = FirebaseAuth.instance;

  static Future<SignInSignUpResult> signUp(String email, String password,
      String name, String numberPhone)
  async {
    try{
      AuthResult result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);


      // try {
        User user = result.user.convertToUser(
          name: name,
          numberPhone: numberPhone,
        );
      //
        await UserServices.updateUser(user);
        await result.user.sendEmailVerification();
      //
        return SignInSignUpResult(user: user);
      //
      //
      //
      // } catch (e) {
      //   print("an error occured while trying to send email verification");
      //   print(e.message);
      // }

    }catch (e) {
      return SignInSignUpResult(message: e.toString().split(',')[1]);
    }
  }
}


class SignInSignUpResult {
  final User user;
  final String message;
  SignInSignUpResult({this.user, this.message});
}

