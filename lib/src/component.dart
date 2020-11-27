part of online_provider;

class OPComponent<T extends OPCreator> {
  BuildContext _context;
  BuildContext get context => _context;

  T _creator;
  T get creator => _creator;

  P watch<P>() => _context.watch<P>();
  P read<P>() => _context.read<P>();
  V select<P, V>(V Function(P) selector) => _context.select<P, V>(selector);

  MediaQueryData get mediaQuery => MediaQuery.of(_context);
  ThemeData get theme => Theme.of(_context);

  void bind(BuildContext context, T creator) {
    _context = context;
    _creator = creator;
  }
}
