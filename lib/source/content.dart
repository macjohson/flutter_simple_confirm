part of simple_confirm;

class _Content extends StatelessWidget {
  const _Content({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      _Inherited.of(context).content,
      style: const TextStyle(fontSize: 14, color: Colors.black54),
    );
  }
}
