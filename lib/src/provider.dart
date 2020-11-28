part of online_provider;

class OPProvider<T extends OPCreator> with ChangeNotifier {
  @protected
  @mustCallSuper
  FutureOr<void> initState() async {}

  @protected
  @mustCallSuper
  FutureOr<void> didChangeDependencies() async {}

  @protected
  @mustCallSuper
  FutureOr<void> didUpdateCreator(covariant T oldCreator) async {}

  @protected
  @mustCallSuper
  FutureOr<void> deactivate() async {}

  @protected
  @override
  @mustCallSuper
  FutureOr<void> dispose() async => super.dispose();
}
