
class ChangePageAction
{
  /// The route of the new page to navigate to
  String newPage;
  /// The route of the old page to pop to
  String oldPage;
  /// How to navigate
  NavigationMethod navigationMethod;

  ChangePageAction({this.newPage, this.oldPage, this.navigationMethod});
}

enum NavigationMethod
{
  PopToRootAndPushReplacement,
  Push,
  PushReplacement,
  Pop,
  PopUntil,
  PopAndPush,
  PopUntilAndPush
}