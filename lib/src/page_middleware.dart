import 'Middleware/change_page_middleware.dart';
import 'package:redux/redux.dart';
import './page_actions.dart';

List<Middleware<T>> pageMiddleware<T>() {
  return [
    TypedMiddleware<T, ChangePageAction>(changePageMiddleware),
  ];
}
