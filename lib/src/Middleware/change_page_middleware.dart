import 'package:flutter/material.dart';
import '../pages.dart';
import 'package:redux/redux.dart';

import '../page_actions.dart';

void changePageMiddleware<T>(
    Store<T> store, ChangePageAction action, NextDispatcher next) {
  try {
    switch (action.navigationMethod) {
      case NavigationMethod.Push:
        Pages.navigatorKey.currentState.pushNamed(action.newPage.toString());
        break;
      case NavigationMethod.PushReplacement:
        Pages.navigatorKey.currentState
            .pushReplacementNamed(action.newPage.toString());
        break;
      case NavigationMethod.Pop:
        Pages.navigatorKey.currentState.pop();
        break;
      case NavigationMethod.PopUntil:
        Pages.navigatorKey.currentState
            .popUntil(ModalRoute.withName(action.oldPage.toString()));
        break;
      case NavigationMethod.PopAndPush:
        Pages.navigatorKey.currentState.popAndPushNamed(action.newPage.toString());
        break;
      case NavigationMethod.PopUntilAndPush:
        Pages.navigatorKey.currentState
            .popUntil(ModalRoute.withName(action.oldPage.toString()));
        Pages.navigatorKey.currentState.pushNamed(action.newPage.toString());
        break;
        case NavigationMethod.PopToRootAndPushReplacement:
        while(Pages.navigatorKey.currentState.canPop()) Pages.navigatorKey.currentState.pop();
        Pages.navigatorKey.currentState.pushReplacementNamed(action.newPage.toString());
        break;
    }
  } catch (e) {
    print(e);
  }
}
