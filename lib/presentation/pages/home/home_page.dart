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
    return BaseScaffold(
      body: Center(child: Text('Welcome')),
    );
  }
}
