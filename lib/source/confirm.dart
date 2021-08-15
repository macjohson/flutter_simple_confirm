part of simple_confirm;

class _Confirm extends StatelessWidget {
  final SimpleConfirmOptions options;
  final Animation<double> animation;

  const _Confirm({Key? key, required this.animation, required this.options})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _Inherited(
      Stack(
        children: [
          _Mask(),
          Positioned.fill(
              child: Center(
            child: _MainBox(),
          )),
          if (options.confirmText != null)
            Positioned(
                bottom: 114,
                left: 30,
                right: 30,
                child: AnimatedBuilder(
                  animation: animation,
                  child: _Button(
                      name: options.confirmText!,
                      onTap: options.onConfirm,
                      type: _ButtonType.primary),
                  builder: (_, child) {
                    return Transform.translate(
                      offset: Offset(0, 162 - 162 * animation.value),
                      child: child,
                    );
                  },
                )),
          if (options.cancelText != null)
            Positioned(
              child: AnimatedBuilder(
                animation: animation,
                child: _Button(
                  name: options.cancelText!,
                  type: _ButtonType.cancel,
                  onTap: () {
                    Navigator.pop(context);
                    options.onCancel?.call();
                  },
                ),
                builder: (_, child) => Transform.translate(
                  offset: Offset(0, 98 - animation.value * 98),
                  child: child,
                ),
              ),
              left: 30,
              bottom: 50,
              right: 30,
            )
        ],
      ),
      options: options,
      animation: animation,
    );
  }
}
