import 'package:knoxxbox/helpers/adaptive.dart';
import 'package:knoxxbox/helpers/constants.dart';
import 'package:knoxxbox/widgets/kx_appbar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isSmallDevice = false;
  bool isDesktop = false;
  bool isSignIn = true;

  TextEditingController usernameController = TextEditingController();
  TextEditingController pwdController = TextEditingController();
  TextEditingController businessController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController newpwdController = TextEditingController();
  TextEditingController repeatpwdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    isSmallDevice = isDisplaySmallDevice(context);
    isDesktop = isDisplayDesktop(context);

    Widget welcomeSection = Padding(
      padding: kGlobalOuterPadding * 2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: const [
          Text(
            kWelcomeText,
            textAlign: TextAlign.justify,
          ),
          kVSpace,
          Text(
            kServiceText,
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    );

    return Scaffold(
      appBar: KnoxxboxAppBar(actions: [
        Visibility(
          visible: isDesktop,
          child: TextButton(
            child: const Text(kHome),
            onPressed: () {},
          ),
        ),
        Visibility(
          visible: isDesktop,
          child: TextButton(
            child: const Text(kDocumentation),
            onPressed: () {},
          ),
        ),
        Visibility(
          visible: isDesktop,
          child: TextButton(
            child: const Text(kPricing),
            onPressed: () {},
          ),
        ),
        TextButton(
          onPressed: () => Navigator.of(context).pushNamed('/signin'),
          child: const Text(kSignIn),
        ),
        if (!isDesktop)
          PopupMenuButton(
              itemBuilder: (BuildContext context) => <PopupMenuEntry>[
                    const PopupMenuItem(
                      value: 'home',
                      child: Text(kHome),
                    ),
                    const PopupMenuItem(
                      value: 'doc',
                      child: Text(kDocumentation),
                    ),
                    const PopupMenuItem(
                      value: 'pricing',
                      child: Text(kPricing),
                    ),
                  ]),
      ]),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.topCenter,
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 1024.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                kVSpace,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Text(
                    kWelcomeHeader1,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: isSmallDevice ? 38 : 48.0,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                ),
                isSmallDevice
                    ? SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            welcomeSection,
                            Image.asset(
                              'res/welcome.png',
                              width: 280,
                            ),
                          ],
                        ),
                      )
                    : Row(
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: welcomeSection,
                          ),
                          Image.asset(
                            'res/welcome.png',
                            width: 400,
                          ),
                        ],
                      ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                '© 2022-2023 RSoft',
                style: TextStyle(fontSize: 12.0),
              ),
              Text(
                'rennovationsoftware.com',
                style: TextStyle(fontSize: 12.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
