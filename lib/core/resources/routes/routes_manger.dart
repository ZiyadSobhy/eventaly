import 'package:flutter/cupertino.dart';

import '../../../presentation/authoutaction/signIn/sign_in.dart';
import '../../../presentation/authoutaction/signUp/sign_up.dart';

class RouteMangers {
  static const String signUp = '/signUp';
  static const String signIn = '/signIn';

  static Route? router(RouteSettings settings) {
    switch (settings.name) {
      case (signIn):{
        return CupertinoPageRoute(
          builder: (_) => const SignIn(),
        );

      }
      case (signUp):{
        return CupertinoPageRoute(
          builder: (_) => const SignUp(),
        );

      }
    }
  }
}