part of online_provider;

class OPProvider<T extends OPCreator> extends ChangeNotifier
    with OPBinderMixin<T> {
  P watch<P>() => context.watch<P>();
  P read<P>() => context.read<P>();
  V select<P, V>(V Function(P) selector) => context.select<P, V>(selector);

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
