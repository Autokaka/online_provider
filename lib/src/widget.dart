part of online_provider;

class OPWidget<T extends OPCreator, R extends OPComponent<T>> extends State<T> {
  R _component;
  R get component => _component;

  @override
  @protected
  @deprecated
  T get widget => super.widget;
  T get creator => widget;

  P watch<P>() => context.watch<P>();
  P read<P>() => context.read<P>();
  V select<P, V>(V Function(P) selector) => context.select<P, V>(selector);

  MediaQueryData get mediaQuery => MediaQuery.of(context);
  ThemeData get theme => Theme.of(context);

  @protected
  List<OPProvider> get bindLifecycleProviders => [];

  @override
  @protected
  @mustCallSuper
  void initState() {
    super.initState();
    if (bindLifecycleProviders.isNotEmpty) {
      bindLifecycleProviders.forEach((provider) => provider.initState());
    }
  }

  @override
  @protected
  @mustCallSuper
  void didChangeDependencies() {
    super.didChangeDependencies();
    _component = creator.createComponent();
    _component.bind(context, creator);
    if (bindLifecycleProviders.isNotEmpty) {
      bindLifecycleProviders
          .forEach((provider) => provider.didChangeDependencies());
    }
  }

  @override
  @mustCallSuper
  @deprecated
  @protected
  void didUpdateWidget(covariant T oldCreator) {
    super.didUpdateWidget(oldCreator);
    didUpdateCreator(oldCreator);
  }

  @protected
  @mustCallSuper
  void didUpdateCreator(covariant T oldCreator) {
    _component.bind(context, creator);
    if (bindLifecycleProviders.isNotEmpty) {
      bindLifecycleProviders
          .forEach((provider) => provider.didUpdateCreator(oldCreator));
    }
  }

  @protected
  @override
  Widget build(BuildContext context) => Scaffold();

  @override
  @protected
  @mustCallSuper
  void deactivate() {
    super.deactivate();
    if (bindLifecycleProviders.isNotEmpty) {
      bindLifecycleProviders.forEach((provider) => provider.deactivate());
    }
  }

  @override
  @protected
  @mustCallSuper
  void dispose() {
    if (bindLifecycleProviders.isNotEmpty) {
      bindLifecycleProviders.forEach((provider) => provider.dispose());
    }
    super.dispose();
  }
}
