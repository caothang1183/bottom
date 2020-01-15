import 'package:flutter_redux_tutorial/models/app_bottom_tab.dart';

class UpdateBottomTabAction {
    final AppBottomTab bottomTabActive;

    UpdateBottomTabAction(this.bottomTabActive);

    @override
    String toString() {
        return 'UpdateTabAction{bottomTabActive: $bottomTabActive}';
    }
}