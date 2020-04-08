part of 'self_diagnosis_page.dart';

class _IntroSection extends StatelessWidget {
  const _IntroSection({Key key, @required this.next}) : super(key: key);

  final VoidCallback next;

  Widget introText(String text) => Text(
        text,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      );
  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.all(16),
      sliver: SliverList(
        delegate: SliverChildListDelegate([
          introText(
            'The purpose of the Coronavirus at-home Symptom Checker is to help you make decisions about seeking appropriate medical care. This system is not intended for the diagnosis or treatment of disease or other conditions, including COVID-19.',
          ),
          const SizedBox(height: 32),
          introText(
            'If you are experiencing a life-threatening emergency, please call your local emergency services immediately.',
          ),
          const SizedBox(height: 32),
          introText(
            'This system does not replace the judgment of healthcare professionals or the performance of any clinical assessment. ',
          ),
        ]),
      ),
    );
  }
}
