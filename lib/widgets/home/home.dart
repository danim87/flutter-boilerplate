import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/app_provider.dart';
import '../../providers/data_provider.dart';
import '../../services/mock_data_service.dart';
import '../../services/size_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key key,
  }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final postService = MockDataService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Consumer<DataProvider>(
              builder: (_, dataProvider, __) {
                if (dataProvider.state == NotifierState.initial) {
                  return Text('Press the button 👇');
                } else if (dataProvider.state == NotifierState.loading) {
                  return CircularProgressIndicator();
                } else {
                  return dataProvider.data.fold(
                    (error) => Text(error.toString()),
                    (data) => Text(data.toString()),
                  );
                }
              },
            ),
            Text(
              '${Provider.of<AppProvider>(context).counter}',
              style: Theme.of(context).textTheme.headline4,
            ),
            SizedBox(height: scaleHeight(30)),
            RaisedButton(
              onPressed: () =>
                  Provider.of<DataProvider>(context, listen: false).getData(),
              child: Text(
                'Get Data',
              ),
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
