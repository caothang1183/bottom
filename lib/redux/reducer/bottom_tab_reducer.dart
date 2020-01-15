import 'package:flutter_redux_tutorial/models/app_bottom_tab.dart';
import 'package:flutter_redux_tutorial/redux/actions/app_action.dart';
import 'package:redux/redux.dart';

final bottomTabReducer = combineReducers<AppBottomTab>([
    TypedReducer<AppBottomTab, UpdateBottomTabAction>(_activeBottomTabReducer),
]);

AppBottomTab _activeBottomTabReducer(AppBottomTab bottomTabActive, UpdateBottomTabAction action) {
    return action.bottomTabActive;
}