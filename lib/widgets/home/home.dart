import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/app_provider.dart';
import '../../services/size_service.dart';

class HomePage extends StatefulWidget {
  const HomePage();

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    initSizeService(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'button clicks:',
            ),
            Text(
              '${Provider.of<AppProvider>(context).counter}',
              style: Theme.of(context).textTheme.headline4,
            ),
            SizedBox(height: scaleHeight(30)),
            RaisedButton(
              onPressed: () => Navigator.pushNamed(context, '/settings'),
              child: Text(
                'Settings',
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:
            Provider.of<AppProvider>(context, listen: false).incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
