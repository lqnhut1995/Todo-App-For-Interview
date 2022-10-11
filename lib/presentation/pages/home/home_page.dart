part of 'home.dart';

class HomePage extends StatefulWidget {
  static const String route_id = '/';

  const HomePage();

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BaseScaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: Spacing.s),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ITextButton(
                  title: 'Call List',
                  onPressed: () {
                    Navigator.of(context, rootNavigator: true)
                        .pushNamed(Routes.callList);
                  },
                ),
                vSpaceL,
                ITextButton(
                  title: 'Buy List',
                  onPressed: () {
                    Navigator.of(context, rootNavigator: true)
                        .pushNamed(Routes.buyList);
                  },
                ),
                vSpaceL,
                ITextButton(
                  title: 'Sell List',
                  onPressed: () {
                    Navigator.of(context, rootNavigator: true)
                        .pushNamed(Routes.sellList);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
