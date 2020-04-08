import 'package:WHOFlutter/components/page_scaffold/page_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

part 'options_list.dart';
part 'intro_section.dart';
part 'button.dart';
part 'section_page.dart';
part 'result_pages/result_sick_page.dart';

class SelfDiagnosisPage extends StatefulWidget {
  @override
  _SelfDiagnosisPageState createState() => _SelfDiagnosisPageState();
}

class _SelfDiagnosisPageState extends State<SelfDiagnosisPage> {
  int pageIndex = 0;
  bool continueEnabled = true;
  bool onResultPage = false;
  List<Widget> tempPages;

  @override
  void initState() {
    super.initState();
    tempPages = [
      _IntroSection(next: continueToNext),
      _SectionPage<dynamic>(
        title: 'Are you ill, or caring for someone who is ill?',
        onValueSelected: (_SectionOption option) {
          setState(() {
            continueEnabled = true;
          });
        },
        dualColumn: false,
        options: [
          _SectionOption(title: 'Yes', value: 0),
          _SectionOption(title: 'No', value: 1),
        ],
      ),
      _SectionPage<dynamic>(
        title: 'What is their age?',
        onValueSelected: (_SectionOption option) {
          setState(() {
            continueEnabled = true;
          });
        },
        dualColumn: true,
        options: [
          _SectionOption(
            title: 'Under 2',
            value: 0,
          ),
          _SectionOption(
            title: '2–4',
            value: 0,
          ),
          _SectionOption(
            title: '5–9',
            value: 0,
          ),
          _SectionOption(
            title: '10–18',
            value: 0,
          ),
          _SectionOption(
            title: '19–29',
            value: 0,
          ),
          _SectionOption(
            title: '30–39',
            value: 0,
          ),
          _SectionOption(
            title: '40–49',
            value: 0,
          ),
          _SectionOption(
            title: '50–59',
            value: 0,
          ),
          _SectionOption(
            title: '60–64',
            value: 0,
          ),
          _SectionOption(
            title: '65–69',
            value: 0,
          ),
          _SectionOption(
            title: '70–79',
            value: 0,
          ),
          _SectionOption(
            title: '80+',
            value: 0,
          ),
          _SectionOption(
            title: 'Under 2',
            value: 0,
          ),
          _SectionOption(
            title: '2–4',
            value: 0,
          ),
          _SectionOption(
            title: '5–9',
            value: 0,
          ),
          _SectionOption(
            title: '10–18',
            value: 0,
          ),
          _SectionOption(
            title: '19–29',
            value: 0,
          ),
          _SectionOption(
            title: '30–39',
            value: 0,
          ),
          _SectionOption(
            title: '40–49',
            value: 0,
          ),
          _SectionOption(
            title: '50–59',
            value: 0,
          ),
          _SectionOption(
            title: '60–64',
            value: 0,
          ),
          _SectionOption(
            title: '65–69',
            value: 0,
          ),
          _SectionOption(
            title: '70–79',
            value: 0,
          ),
          _SectionOption(
            title: '80+',
            value: 0,
          ),
        ],
      ),
      _ResultSickPage(),
    ];
  }

  void continueToNext() {
    if (pageIndex + 1 < tempPages.length) {
      setState(() {
        pageIndex++;
        continueEnabled = false;
      });
    }
    if (pageIndex + 1 == tempPages.length) {
      setState(() {
        onResultPage = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color(0xfff6f5f5),
      child: Stack(
        children: <Widget>[
          PageScaffold(
            context,
            title: 'Symptom Checker',
            subtitle: 'COVID-19',
            body: <Widget>[tempPages[pageIndex]],
          ),
          if (!onResultPage)
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Stack(
                children: <Widget>[
                  Positioned.fill(
                    child: Opacity(
                      opacity: 0.8,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                          colors: [
                            Color(0xfff6f5f5),
                            // Colors.transparent,
                            Color(0xFF1A458E),
                          ],
                          // stops: [0.5, 1],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        )),
                      ),
                    ),
                  ),
                  // SizedBox(height: 100)
                  Container(
                    margin: const EdgeInsets.all(24),
                    width: double.infinity,
                    child: _Button(
                      onTap: continueEnabled ? continueToNext : null,
                      text: pageIndex == 0 ? 'Get Started' : 'Continue',
                    ),
                  )
                ],
              ),
            ),

          /*  child: Container(
                decoration: BoxDecoration(
                    // color: Colors.white,
                   
                padding: const EdgeInsets.all(24),
                child: _Button(
                  onTap: continueEnabled ? continueToNext : null,
                  text: pageIndex == 0 ? 'Get Started' : 'Continue',
                ), */
        ],
      ),
    );
  }
}

class _SelfDiagnosisSectionData {
  final String id;
  final String title;
  final bool dualColumn;
  final List<_SectionOption> options;

  _SelfDiagnosisSectionData({
    @required this.id,
    @required this.title,
    @required this.dualColumn,
    @required this.options,
  });
}
