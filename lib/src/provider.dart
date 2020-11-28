part of online_provider;

class OPProvider<T extends OPCreator> with ChangeNotifier {
  @protected
  @mustCallSuper
  void initState() {}

  @protected
  @mustCallSuper
  void didChangeDependencies() {}

  @protected
  @mustCallSuper
  void didUpdateCreator(covariant T oldCreator) {}

  @protected
  @mustCallSuper
  void deactivate() {}
}
