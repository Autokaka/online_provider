part of online_provider;

class OPComponent<T extends OPCreator> with OPBinderMixin<T> {
  P watch<P>() => context.watch<P>();
  P read<P>() => context.read<P>();
  V select<P, V>(V Function(P) selector) => context.select<P, V>(selector);

  MediaQueryData get mediaQuery => MediaQuery.of(context);
  ThemeData get theme => Theme.of(context);
}
