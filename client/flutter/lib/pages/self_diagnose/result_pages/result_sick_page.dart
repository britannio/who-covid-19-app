part of '../self_diagnosis_page.dart';

class _ResultSickPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.all(16),
      sliver: SliverList(
        delegate: SliverChildListDelegate([
          Text(
            'Stay home and take care of yourself, Call your provider if you get worse.',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w900,
              color: Color(0xFF008DC9),
            ),
          ),
          const SizedBox(height: 16),
          Text(
            'Sorry you’re feeling ill. You have one or more symptom(s) that may'
            ' be related to COVID-19. Please stay home, take care of yourself,'
            ' and limit your in-person contact with other individuals to help '
            'prevent the spread.',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 32),
          Text(
            'Contact your health provider when or the emergency room if your '
            'conditions gets worse.',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
        ]),
      ),
    );
  }
}
