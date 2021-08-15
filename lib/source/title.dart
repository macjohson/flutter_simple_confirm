part of simple_confirm;

class _Title extends StatelessWidget {
  const _Title({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final titleString = _Inherited.of(context).title;

    if (titleString == null) return Container();
    return Text(
      titleString,
      style: const TextStyle(
          fontSize: 16, color: Colors.black87, fontWeight: FontWeight.bold),
    );
  }
}
