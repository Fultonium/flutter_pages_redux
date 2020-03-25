To add middleware
```dart
store = Store<AppState>(
    middleware: appMiddleware()
      ..addAll(pageMiddleware()),
  );
```

To set up app for navigation
```dart
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'My app',
        theme: ThemeData(
            primarySwatch: Colors.blue,
        ),
        initialRoute: "root:",
        navigatorKey: Pages.navigatorKey,
        routes: {
            "root" : (context) => RootPage(),
        },
    );
  }
}

```

To change pages
```dart
 store.dispatch(ChangePageAction(
    newPage: "newPageRoute",
    navigationMethod: NavigationMethod.Push,
  ));
```