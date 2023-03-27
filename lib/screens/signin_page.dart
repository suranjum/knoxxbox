import 'dart:convert';

import 'package:knoxxbox/providers/business_api_provider.dart';
import 'package:knoxxbox/widgets/kx_appbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../helpers/constants.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool isSignIn = true;
  bool isWorking = false;

  TextEditingController usernameController = TextEditingController();
  TextEditingController pwdController = TextEditingController();
  TextEditingController businessController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController newpwdController = TextEditingController();
  TextEditingController repeatpwdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Widget copyRight = const Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        '© 2022-2023 RSoft',
        style: TextStyle(fontSize: 12.0),
      ),
    );

    Widget loginSection = Padding(
      padding: kGlobalOuterPadding * 2,
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 300),
        child: isSignIn
            ? Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      kSignIn,
                      style: TextStyle(fontSize: 24.0),
                    ),
                    kVSpace,
                    TextField(
                      controller: usernameController,
                      decoration: const InputDecoration(
                        hintText: kUsername,
                        prefixIcon: Icon(CupertinoIcons.person),
                      ),
                    ),
                    kVSpace,
                    TextField(
                      obscureText: true,
                      controller: pwdController,
                      decoration: const InputDecoration(
                        hintText: kPassword,
                        prefixIcon: Icon(CupertinoIcons.lock_open),
                      ),
                    ),
                    kVSpace,
                    ElevatedButton(
                      onPressed: () => signIn(),
                      child: const Text(kSubmit),
                    ),
                    kVSpace,
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(kDoNotHaveAccount),
                    ),
                    isWorking
                        ? const CircularProgressIndicator.adaptive()
                        : OutlinedButton(
                            onPressed: () {
                              setState(() {
                                isSignIn = false;
                              });
                            },
                            child: const Text(kCreateAccount),
                          ),
                    kVSpace,
                    copyRight,
                  ],
                ),
              )
            : Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        kSignUp,
                        style: TextStyle(fontSize: 24.0),
                      ),
                      kVSpace,
                      TextField(
                        controller: businessController,
                        decoration: const InputDecoration(
                          hintText: kUsername,
                          prefixIcon: Icon(CupertinoIcons.person),
                        ),
                      ),
                      kVSpace,
                      TextField(
                        controller: emailController,
                        decoration: const InputDecoration(
                          hintText: kEmail,
                          prefixIcon: Icon(CupertinoIcons.at),
                        ),
                      ),
                      kVSpace,
                      TextField(
                        obscureText: true,
                        controller: newpwdController,
                        decoration: const InputDecoration(
                          hintText: kNewPassword,
                          prefixIcon: Icon(CupertinoIcons.lock),
                        ),
                      ),
                      kVSpace,
                      TextField(
                        obscureText: true,
                        controller: repeatpwdController,
                        decoration: const InputDecoration(
                          hintText: kRepeatPassword,
                          prefixIcon: Icon(CupertinoIcons.lock),
                        ),
                      ),
                      kVSpace,
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text(kSubmit),
                      ),
                      kVSpace,
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(kAlreadyHaveAccount),
                      ),
                      isWorking
                          ? const CircularProgressIndicator.adaptive()
                          : OutlinedButton(
                              onPressed: () {
                                setState(() {
                                  isSignIn = true;
                                });
                              },
                              child: const Text(kSignIn),
                            ),
                      kVSpace,
                      copyRight,
                    ]),
              ),
      ),
    );

    return Scaffold(
      appBar: const KnoxxboxAppBar(actions: []),
      body: Center(
        child: loginSection,
      ),
    );
  }

  Future<void> signIn() async {
    Map<String, String> post = {
      'postdata': jsonEncode(
          {'email': usernameController.text, 'pwd': pwdController.text})
    };
    setState(() {
      isWorking = true;
    });
    BusinessApiProvider.signInApi(post).then((value) {
      setState(() {
        isWorking = false;
      });
      if (value['response'] != null) {
      } else {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(value['error']),
          duration: const Duration(seconds: 3),
        ));
      }
    });
  }
}
