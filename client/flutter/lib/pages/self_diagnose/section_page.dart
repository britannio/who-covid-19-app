part of 'self_diagnosis_page.dart';

class _SectionPage<T> extends StatefulWidget {
  final String title;
  final Function(_SectionOption<T>) onValueSelected;
  final bool dualColumn;
  final List<_SectionOption<T>> options;
  final bool centerButtonTitle;

  const _SectionPage({
    Key key,
    @required this.title,
    @required this.onValueSelected,
    @required this.options,
    this.centerButtonTitle = false,
    this.dualColumn = false,
  }) : super(key: key);

  @override
  _SectionPageState<T> createState() => _SectionPageState<T>();
}

class _SectionPageState<T> extends State<_SectionPage<T>> {
  _SectionOption _selectedOption;

  void _selectOption(_SectionOption<T> option) {
    setState(() {
      _selectedOption = option;
    });
    widget.onValueSelected(option);
  }

  List<StaggeredTile> _staggeredTiles() {
    final StaggeredTile tile =
        widget.dualColumn ? StaggeredTile.extent(1, 72) : StaggeredTile.fit(2);

    return List.generate(widget.options.length, (_) => tile);
  }

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.all(16),
      sliver: SliverList(
        delegate: SliverChildListDelegate([
          Text(
            widget.title,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w900),
          ),
          StaggeredGridView.count(
            crossAxisCount: 2,
            shrinkWrap: true,
            primary: false,
            staggeredTiles: _staggeredTiles(),
            mainAxisSpacing: 16,
            crossAxisSpacing: 16,
            children: widget.options.map((_SectionOption<T> option) {
              return _SectionOptionItem<T>(
                option: option,
                onSelected: () => _selectOption(option),
                selected: option == _selectedOption,
                centerTitle: widget.centerButtonTitle,
              );
            }).toList(),
          ),
        ]),
      ),
    );
  }
}

class _SectionOptionItem<T> extends StatelessWidget {
  const _SectionOptionItem({
    Key key,
    @required this.option,
    @required this.onSelected,
    @required this.selected,
    @required this.centerTitle,
  }) : super(key: key);

  final VoidCallback onSelected;
  final bool selected;
  final bool centerTitle;

  final _SectionOption<T> option;

  @override
  Widget build(BuildContext context) {
    Widget text = Text(
      option.title,
      textAlign: centerTitle ? TextAlign.center : TextAlign.start,
      style: TextStyle(
        color: selected ? Colors.white : Color(0xFF1A458E),
        fontSize: 18,
        fontWeight: FontWeight.w600,
      ),
    );
    if (centerTitle) {
      text = Center(child: text);
    }
    return ConstrainedBox(
      constraints: BoxConstraints(minHeight: 72, maxHeight: 100),
      child: RawMaterialButton(
        onPressed: () {
          onSelected();
          HapticFeedback.selectionClick();
        },
        shape: StadiumBorder(),
        padding: const EdgeInsets.all(16),
        fillColor: selected ? Color(0xFF008DC9) : Colors.white,
        elevation: 0,
        highlightElevation: 0,
        child: text,
      ),
    );
  }
}

class _SectionOption<T> {
  _SectionOption({
    @required this.title,
    @required this.value,
    @required this.result,
  });

  final String title;
  final T value;
  final _Result result;
}

enum _Result {
  STAY_HOME,
  STAY_HOME_ILL,
  MEDICAL_ATTENTION,
  CONTINUE,
  CONTINUE_EXTRA
}
