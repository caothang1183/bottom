import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_redux_tutorial/models/app_bottom_tab.dart';
import 'package:flutter_redux_tutorial/models/app_state.dart';
import 'package:flutter_redux_tutorial/redux/actions/app_action.dart';
import 'package:redux/redux.dart';

class BottomTab extends StatelessWidget {
    BottomTab({Key key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return StoreConnector<AppState, _ViewModel>(
        distinct: true,
        converter: _ViewModel.fromStore,
        builder: (context, vm) {
        return BottomNavigationBar(
            key: Key("bottom_tab"),
            currentIndex: AppBottomTab.values.indexOf(vm.bottomTabActive),
            onTap: vm.onTabSelected,
            items: [
                BottomNavigationBarItem(
                    icon: Icon(Icons.list),
                    title: Text("Task List"),
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.multiline_chart),
                    title: Text("Status"),
                ),
            ],
        );
        });
    }
}
class _ViewModel {
    final AppBottomTab bottomTabActive;
    final Function(int) onTabSelected;

    _ViewModel({
        @required this.bottomTabActive,
        @required this.onTabSelected,
    });

    static _ViewModel fromStore(Store<AppState> store) {
        return _ViewModel(
            bottomTabActive: store.state.bottomTabActive,
            onTabSelected: (index) {
                store.dispatch(UpdateBottomTabAction(AppBottomTab.values[index]));
            },
        );
    }

    @override
    bool operator ==(Object other) =>
        identical(this, other) ||
            other is _ViewModel &&
                runtimeType == other.runtimeType &&
                bottomTabActive == other.bottomTabActive;

    @override
    int get hashCode => bottomTabActive.hashCode;
}
