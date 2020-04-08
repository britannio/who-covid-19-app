part of 'self_diagnosis_page.dart';

class _Button extends StatelessWidget {
  const _Button({
    Key key,
    @required this.text,
    this.onTap,
  }) : super(key: key);

  final VoidCallback onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: onTap,
      shape: StadiumBorder(),
      padding: const EdgeInsets.all(24),
      child: Text(
        text,
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
      ),
      color: Color(0xFF1A458E),
      disabledColor: Color(0xFF1A458E).withOpacity(0.8),
      disabledTextColor: Colors.white.withOpacity(0.8),
    );
  }
}
