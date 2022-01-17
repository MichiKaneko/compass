import 'package:compass/model/question_page_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class QuestionPage extends StatelessWidget {
  const QuestionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<QuestionPageModel>(
        create: (_) => QuestionPageModel()..getQuestion(),
        child:Consumer<QuestionPageModel>(
            builder: (context, model, child){
              return Scaffold(
                body: SafeArea(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 20,left: 20,top: 24),
                        child: SizedBox(
                          height: 30,
                          width: double.infinity,
                          child: Text(
                            model.question['question'].toString(),
                            textAlign: TextAlign.left,
                            style: const TextStyle(
                                fontWeight: FontWeight.w400,
                                fontStyle:  FontStyle.normal,
                                fontSize: 16.0
                            )
                          ),
                        ),
                      ),
                      Padding(
                        padding:const EdgeInsets.only(top: 154,bottom: 154),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                                model.question['word'].toString(),
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontStyle:  FontStyle.normal,
                                    color: Color.fromRGBO(36, 84, 184, 1),
                                    fontSize: 50.0
                                ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top:8.0,left: 8.0),
                              child: Image.asset(
                                'assets/lv1IconVoiceicon.png',
                                height: 16,
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical:4),
                        child: Container(
                          width: 335,
                          height: 56,
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(
                                  Radius.circular(30)
                              ),
                              boxShadow: [BoxShadow(
                                  color: Color(0xffa7bbe3),
                                  offset: Offset(0,1),
                                  blurRadius: 5,
                                  spreadRadius: 0
                              )],
                              color: Color(0xffffffff)
                          ),
                          child: Text(
                              model.answer[0]['text'],
                              style: const TextStyle(
                                  color:  Color(0xff2454b8),
                                  fontWeight: FontWeight.w700,
                                  fontStyle:  FontStyle.normal,
                                  fontSize: 16.0
                              ),
                              textAlign: TextAlign.center
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical:4),
                        child: InkWell(
                          child: Container(
                            width: 335,
                            height: 56,
                            alignment: Alignment.center,
                            decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(
                                    Radius.circular(30)
                                ),
                                boxShadow: [BoxShadow(
                                    color: Color(0xffa7bbe3),
                                    offset: Offset(0,1),
                                    blurRadius: 5,
                                    spreadRadius: 0
                                )],
                                color: Color(0xffffffff)
                            ),
                            child: Text(
                                model.answer[1]['text'],
                                style: const TextStyle(
                                    color:  Color(0xff2454b8),
                                    fontWeight: FontWeight.w700,
                                    fontStyle:  FontStyle.normal,
                                    fontSize: 16.0
                                ),
                                textAlign: TextAlign.center
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical:4),
                        child: InkWell(
                          child: Container(
                            width: 335,
                            height: 56,
                            alignment: Alignment.center,
                            decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(
                                    Radius.circular(30)
                                ),
                                boxShadow: [BoxShadow(
                                    color: Color(0xffa7bbe3),
                                    offset: Offset(0,1),
                                    blurRadius: 5,
                                    spreadRadius: 0
                                )],
                                color: Color(0xffffffff)
                            ),
                            child: Text(
                                model.answer[2]['text'],
                                style: const TextStyle(
                                    color:  Color(0xff2454b8),
                                    fontWeight: FontWeight.w700,
                                    fontStyle:  FontStyle.normal,
                                    fontSize: 16.0
                                ),
                                textAlign: TextAlign.center
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }
        )
    );
  }
}
