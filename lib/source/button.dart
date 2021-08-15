part of simple_confirm;

class _Button extends StatelessWidget {
  final String name;
  final VoidCallback? onTap;
  final _ButtonType type;

  _Button({Key? key, required this.name, this.onTap, required this.type})
      : super(key: key);

  static final _borderRadius = BorderRadius.circular(4);

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: _borderRadius,
      color: Colors.white,
      child: InkWell(
        onTap: onTap,
        borderRadius: _borderRadius,
        child: Container(
          height: 48,
          decoration: BoxDecoration(
              color: Colors.transparent, borderRadius: _borderRadius),
          child: Center(
            child: Text(
              name,
              style: TextStyle(
                  fontSize: 16,
                  color: type == _ButtonType.primary
                      ? Theme.of(context).primaryColor
                      : Colors.black54),
            ),
          ),
        ),
      ),
    );
  }
}

enum _ButtonType { primary, cancel }
