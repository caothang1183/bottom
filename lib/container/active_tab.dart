import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_redux_tutorial/container/bottom_tab.dart';
import 'package:flutter_redux_tutorial/models/app_bottom_tab.dart';
import 'package:flutter_redux_tutorial/models/app_state.dart';
import 'package:redux/redux.dart';

class ActiveTab extends StatelessWidget {
    final ViewModelBuilder<AppBottomTab> builder;

    ActiveTab({Key key, @required this.builder}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return StoreConnector<AppState, AppBottomTab>(
            distinct: true,
            converter: (Store<AppState> store) => store.state.bottomTabActive,
            builder: builder,
        );
    }
}
