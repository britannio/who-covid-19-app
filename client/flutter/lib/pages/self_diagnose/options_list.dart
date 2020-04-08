part of 'self_diagnosis_page.dart';

class _OptionsList extends StatelessWidget {
  const _OptionsList({
    Key key,
    @required this.title,
    @required this.optionList,
  }) : super(key: key);

  final String title;
  final List<_Option> optionList;

  @override
  Widget build(BuildContext context) {
    return Column();
  }
}

class _Option {
  _Option({
    this.title,
    this.leading,
  });

  final String title;
  final Widget leading;
}
