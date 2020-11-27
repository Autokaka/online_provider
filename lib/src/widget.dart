part of online_provider;

class OPWidget<T extends OPCreator, R extends OPComponent<T>> extends State<T> {
  R _component;
  R get component => _component;

  @override
  @deprecated
  T get widget => super.widget;
  T get creator => widget;

  P watch<P>() => context.watch<P>();
  P read<P>() => context.read<P>();
  V select<P, V>(V Function(P) selector) => context.select<P, V>(selector);

  MediaQueryData get mediaQuery => MediaQuery.of(context);
  ThemeData get theme => Theme.of(context);

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _component = creator.createComponent();
    _component.bind(context, creator);
  }

  @override
  void didUpdateWidget(covariant T oldWidget) {
    super.didUpdateWidget(oldWidget);
    _component.bind(context, creator);
  }

  @override
  Widget build(BuildContext context) => Scaffold();
}
