import 'package:flutter/material.dart';
import 'package:flutter_redux_tutorial/container/active_tab.dart';
import 'package:flutter_redux_tutorial/container/bottom_tab.dart';
import 'package:flutter_redux_tutorial/models/app_bottom_tab.dart';

class HomeScreen extends StatefulWidget {
    final void Function() onInit;

    HomeScreen({Key key, this.onInit}) : super(key: key);

    @override
    _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
    @override
    void initState() {
        widget.onInit();
        super.initState();
    }

    @override
    Widget build(BuildContext context) {
        return ActiveTab(
            builder: (BuildContext context, AppBottomTab bottomActiveTab) {
                return Scaffold(
                    appBar: AppBar(
                        title: Text("Home Page"),
                    ),
                    body: Center(
                        child: bottomActiveTab == AppBottomTab.tasks ?CircularProgressIndicator() : Center(child: Text("Status"),),
                    ),
                    floatingActionButton: FloatingActionButton(
                        onPressed: () {},
                        tooltip: 'Refresh',
                        child: Icon(Icons.refresh),
                    ),
                    bottomNavigationBar: BottomTab(),
                );
            }
        );
    }
}

