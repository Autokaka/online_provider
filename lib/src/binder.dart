part of online_provider;

mixin OPBinderMixin<T extends OPCreator> {
  BuildContext _context;
  BuildContext get context => _context;
  T _creator;
  T get creator => _creator;

  void bind(BuildContext context, T creator) {
    _context = context;
    _creator = creator;
  }
}
