part of simple_confirm;

class _MainBox extends StatelessWidget {
  const _MainBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final animation = _Inherited.xAnimation(context);
    return AnimatedBuilder(
      animation: animation,
      builder: (_, child) {
        return Transform.translate(
          offset: Offset(0, 40 - 40 * animation.value),
          child: Opacity(
            opacity: 1 * animation.value,
            child: child,
          ),
        );
      },
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Material(
          color: Colors.white,
          borderRadius: _Button._borderRadius,
          child: Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: _Button._borderRadius,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (_Inherited.of(context).title != null)
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      _Title(),
                      SizedBox(
                        height: 16,
                      )
                    ],
                  ),
                _Content()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
