abstract class AuthRepo {
  Future completeInformation(
      {required String name, required String phone, required String address});
  Future loginWithGoogle();
  Future loginWithFacebook();
}
