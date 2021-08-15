part of simple_confirm;

class _Inherited extends InheritedWidget {
  final SimpleConfirmOptions options;
  final Animation<double> animation;

  _Inherited(Widget child, {required this.options, required this.animation})
      : super(child: child);

  static SimpleConfirmOptions of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<_Inherited>()!.options;

  static Animation<double> xAnimation(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<_Inherited>()!.animation;

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => true;
}
