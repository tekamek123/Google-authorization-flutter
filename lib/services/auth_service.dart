import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthService {
  // Google sign-in
  Future<UserCredential?> signInWithGoogle() async {
    try {
      // Begin interactive sign-in process
      final GoogleSignInAccount? gUser = await GoogleSignIn().signIn();

      if (gUser == null) {
        // User canceled the sign-in process
        print('Google Sign-In canceled');
        return null; // You can handle this case based on your app's requirements
      }

      // Obtain auth details from request
      final GoogleSignInAuthentication gAuth = await gUser.authentication;

      // Create new credentials for the user
      final credential = GoogleAuthProvider.credential(
        accessToken: gAuth.accessToken,
        idToken: gAuth.idToken,
      );

      // Finally, let's sign in
      return await FirebaseAuth.instance.signInWithCredential(credential);
    } catch (error) {
      // Handle other errors
      print('Error during Google Sign-In: $error');
      return null; // You can handle this case based on your app's requirements
    }
  }
}
