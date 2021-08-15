part of simple_confirm;

class _Mask extends StatelessWidget {
  const _Mask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final animation = _Inherited.xAnimation(context);
    final options = _Inherited.of(context);

    return AnimatedBuilder(
        animation: animation,
        builder: (_, __) => GestureDetector(
              onTap: options.closeableViaMask
                  ? () {
                      Navigator.pop(context);
                      options.onCancel?.call();
                    }
                  : null,
              child: BackdropFilter(
                filter: ImageFilter.blur(
                    sigmaX: 2 * animation.value, sigmaY: 2 * animation.value),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.black.withOpacity(.35 * animation.value)),
                ),
              ),
            ));
  }
}
