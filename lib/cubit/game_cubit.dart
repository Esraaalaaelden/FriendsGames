import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'game_state.dart';

class GameCubit extends Cubit<GameState> {
  GameCubit() : super(GameInitial());

  static GameCubit get(context) => BlocProvider.of(context);

  // teams name saver
  String fTeam = '';
  String sTeam = '';
  int fTeamPoints = 0;
  int sTeamPoints = 0;

  fTeamPointPlus() {
    fTeamPoints++;
    emit(FirstTeamPointPlus());
  }

  sTeamPointPlus() {
    sTeamPoints++;
    emit(SecondTeamPointPlus());
  }

  // 5 x 10 game

  List<String> questions5x10 = [
    "أذكر خمس لاعبين سجلوا 10 أهداف أو أكثر في الدوري الإنجليزي موسم 23/22.",
    "أذكر خمس لاعبين كسبوا دوري الأبطال خمس مرات.",
    "أذكر خمس لاعبين في قائمة نابولي 2023.",
    "أذكر خمس لاعبين في قائمة موناكو 2018.",
    "أذكر خمس لاعبين في قائمة اليوفي في موسم الكالتشيوبولي.",
    "أذكر خمس لاعبين من أكثر 10 هدافين تاريخيين لدوري أبطال أوروبا.",
    "أذكر خمس منتخبات لم يتأهلوا لكأس العالم في تاريخهم.",
    "أذكر خمس لاعبين فازوا بالبالون دور من 2010 إلى 2000.",
    "أذكر خمس لاعبين إسبان بيلعبوا في الدوري الإيطالي.",
    "أذكر خمس لاعبين سجلوا في نهائي كأس العالم.",
    "أذكر خمس لاعبين فازوا بالحذاء الذهبي.",
    "أذكر خمس انديه في التشامبيون شيب.",
    "أذكر خمس حراس لعبوا ل ريال مدريد.",
    "أذكر خمس مدافعين سجلوا في دوري ابطال اوروبا.",
    "أذكر خمس أنديه فازت بكاس العالم للأندية.",
    "أذكر خمس لاعبين حصلوا علي جائزة بوشكاش.",
    "أذكر خمس لاعبين في تشكيلة الارجنتين في نهائي كاس العالم ٢٠١٤.",
    "أذكر خمس لاعبين في تشكيلة المانيا في نهائي كاس العالم ٢٠١٤.",
    "أذكر خمس لاعبين معتزلين فازوا بالكرة الذهبية.",
    "أذكر خمس لاعبين من قائمة منتخب مصر ٢٠٠٦ في بطولة أمم أفريقيا.",
    "أذكر خمس لاعبين عرب سجلوا هدفين أو أكثر في كأس العالم.",
    "أذكر خمس لاعبين فازوا بهداف الدوري الإيطالي.",
    "أذكر خمس لاعبين برتغاليين سجلوا في كأس العالم ٢٠٢٢.",
    "أذكر خمس لاعبين كسبوا دوري الأبطال مع فريقين مختلفين.",
    "أذكر خمس لاعبين إسبان لعبوا سابقا في الدوري الإنجليزي.",
    "أذكر خمس لاعبين إنجليزيين فازوا بدوري أبطال أوروبا.",
    "أذكر خمس أندية فازت على النادي الأهلي في دوري أبطال أفريقيا.",
    "أذكر خمس أندية فازت على نادي الزمالك في دوري أبطال أفريقيا.",
    "أذكر خمس محترفين عرب لعبوا للنادي الأهلي.",
    "أذكر خمس محترفين عرب لعبوا لنادي الزمالك.",
    "أذكر خمس لاعبين لاتينيين لعبوا في الدوري المصري.",
    "أذكر خمس أندية جزائرية.",
    "أذكر خمس أندية مغربية.",
    "أذكر خمس أندية تونسية.",
    "أذكر خمس أندية سعودية.",
    "أذكر خمس لاعبين حققوا الكرة الذهبية والحذاء الذهبي.",
    "أذكر خمس لاعبين حققوا كأس العالم واليورو.",
    "أذكر خمس لاعبين حققوا كأس العالم ودوري أبطال أوروبا في نفس العام.",
    "أذكر خمس لاعبين لعبوا في الدوري الإنجليزي والدوري الإسباني.",
    "أذكر خمس لاعبين لعبوا سابقا في بروسيا دورتموند.",
    "أذكر خمس لاعبين لعبوا لأكثر من نادي إنجليزي.",
    "أذكر ٥ فرق فازت بالدوري الأوروبي.",
    "أذكر خمس لاعبين سجلوا في نهائي كأس العالم.",
    "أذكر خمس لاعبين سجلوا في نهائي دوري أبطال أوروبا.",
    "أذكر خمس لاعبين سجلوا في نهائي دوري أبطال أفريقيا.",
    "أذكر خمس لاعبين سجلوا أهداف مع نادي الأهلي في كأس العالم للأندية.",
    "أذكر خمس أندية برازيلية.",
    "أذكر خمس أندية أرجنتينية.",
    "أذكر خمس أندية من مدينة لندن.",
    "أذكر خمس أندية لعواصم بلاد أوروبية.",
    "أذكر خمس أندية فازت بدوري أبطال أفريقيا.",
    "أذكر خمس لاعبين فازوا بجائزة هداف الدوري المصري.",
    "أذكر خمس لاعبين فازوا بجائزة هداف الدوري الإنجليزي.",
    "أذكر خمس لاعبين فازوا بجائزة هداف الدوري الإسباني.",
    "أذكر خمس لاعبين فازوا بجائزة هداف الدوري الإيطالي.",
    "أذكر خمس مدربين فازوا بلقب الدوري الإيطالي.",
    "أذكر خمس مدربين فازوا بلقب الدوري المصري.",
    "أذكر خمس مدربين فازوا بلقب الدوري الإنجليزي.",
    "أذكر خمس مدربين فازوا بلقب الدوري الإسباني.",
    "أذكر خمس مدربين فازوا بلقب دوري أبطال أوروبا.",
    "أذكر خمس مدربين فازوا بلقب كأس العالم.",
    "أذكر خمس مدربين فازوا بجائزة أفضل مدرب في العالم.",
    "أذكر خمس مدربين دربوا نادي مانشستر يونايتد.",
    "أذكر خمس مدربين دربوا نادي أرسنال.",
    "أذكر خمس مدربين دربوا نادي تشيلسي.",
    "أذكر خمس مدربين دربوا نادي ليفربول.",
    "أذكر خمس مدربين دربوا نادي يوفنتوس.",
    "أذكر خمس مدربين دربوا نادي ريال مدريد.",
    "أذكر خمس مدربين دربوا نادي برشلونة.",
    "أذكر خمس مدربين دربوا نادي بايرن ميونيخ.",
    "أذكر خمس مدربين دربوا كريستيانو رونالدو.",
    "أذكر خمس مدربين دربوا ليونيل ميسي.",
    "أذكر خمس مدربين دربوا زلاتان ابراهيموفيتش.",
    "أذكر خمس مدربين دربوا النادي الأهلي.",
    "أذكر خمس مدربين دربوا نادي الزمالك.",
    "أذكر خمس مدربين دربوا منتخب مصر.",
    "أذكر خمس محترفين مصريين لعبوا في الدوري الإنجليزي.",
    "أذكر خمس لاعبين لعبوا لنادي واحد طوال مسيرتهم.",
    "أذكر خمس ديربيات حول العالم.",
    "أذكر خمس لاعبين سجلوا لريال مدريد في مباراة الكلاسيكو.",
    "أذكر خمس لاعبين سجلوا لبرشلونة في مباراة الكلاسيكو.",
    "أذكر خمس لاعبين غير إسبانيين فازوا بلقب الدوري الإسباني.",
    "أذكر خمس لاعبين إنجليزيين فازوا بدوري الدوري الإنجليزي.",
    "أذكر خمس لاعبين إسبانيين فازوا بلقب الدوري الإسباني.",
    "أذكر خمس لاعبين إيطاليين فازوا بلقب الدوري الإيطالي.",
    "أذكر خمس لاعبين ألمان فازوا ببوندسليجا.",
    "أذكر خمس لاعبين فرنسيين فازوا بلقب الدوري الفرنسي.",
    "أذكر خمس لاعبين برازيليين فازوا بالدوري البرازيلي.",
    "أذكر خمس لاعبين أرجنتينيين فازوا بالدوري الأرجنتيني.",
    "أذكر خمس لاعبين هولنديين فازوا بالدوري الهولندي.",
    "أذكر خمس لاعبين برتغاليين فازوا بالدوري البرتغالي.",
    "أذكر خمس لاعبين هدافين في الدوري الإنجليزي الممتاز.",
    "أذكر خمس لاعبين هدافين في الدوري الإيطالي.",
    "أذكر خمس لاعبين هدافين في الدوري الإسباني.",
    "أذكر خمس لاعبين هدافين في الدوري الألماني.",
    "أذكر خمس لاعبين هدافين في الدوري الفرنسي.",
    "أذكر خمس لاعبين هدافين في الدوري البرازيلي.",
    "أذكر خمس لاعبين هدافين في الدوري الأرجنتيني.",
    "أذكر خمس لاعبين هدافين في الدوري الهولندي.",
    "أذكر خمس لاعبين هدافين في الدوري البرتغالي.",
    "أذكر خمس لاعبين سجلوا في دوري الأبطال مع فريقين مختلفين.",
    "أذكر خمس لاعبين سجلوا هدفين أو أكثر في نهائي دوري الأبطال.",
    "أذكر خمس لاعبين سجلوا هدفين أو أكثر في نهائي كأس العالم.",
    "أذكر خمس لاعبين فازوا بالكرة الذهبية وكأس العالم في نفس العام.",
    "أذكر خمس لاعبين فازوا بالكرة الذهبية ودوري أبطال أوروبا في نفس العام.",
    "أذكر خمس لاعبين لعبوا في دوري الأبطال وفازوا بالدوري الوطني مع نفس النادي.",
    "أذكر خمس لاعبين لعبوا في دوري الأبطال وفازوا بالدوري الوطني مع أندية مختلفة.",
    "أذكر خمس لاعبين سجلوا هاتريك في مباراة نهائي كأس العالم.",
    "أذكر خمس لاعبين سجلوا هاتريك في مباراة نهائي دوري الأبطال.",
    "أذكر خمس لاعبين سجلوا هاتريك في مباراة نهائي كأس العالم للأندية.",
    "أذكر خمس لاعبين سجلوا هاتريك في مباراة نهائي دوري الأبطال للأندية.",
    "أذكر خمس لاعبين سجلوا هاتريك في مباراة نهائي كأس العالم للشباب.",
    "أذكر خمس لاعبين سجلوا هاتريك في مباراة نهائي كأس العالم للناشئين.",
    "أذكر خمس لاعبين سجلوا هاتريك في مباراة نهائي كأس العالم للسيدات.",
    "أذكر خمس لاعبين سجلوا هاتريك في مباراة نهائي دوري أبطال أوروبا للسيدات.",
  ];

// You can access the questions like this:
// String firstQuestion = questions[0];
// String secondQuestion = questions[1];
// and so on...

  int fiveXTenCurrentQuestionIndex = -1;


  bool isButtonDisabled = false;

  void fiveXTenChangeQuestion() {
    fiveXTenCurrentQuestionIndex = Random().nextInt(questions5x10.length);

    emit(
        GetRandomQuestionState()); // Start a new countdown for the next question
  }

  //without talking game
  List<String> withoutTalking = [
    'غابرييل باتيستوتا',
    'زين الدين زيدان',
    'فرانز بيكنباور',
    'يوهان كرويف',
    'ماركو فان باستن',
    'ألفريدو دي ستيفانو',
    'اوزيبيو',
    'ليف ياشين',
    'ميشيل بلاتيني',
    'باولو مالديني',
    'فيرينك بوشكاش',
    'باولو روسي',
    'رود خوليت',
    'بوبي تشارلتون',
    'لوثار ماثيوس',
    'كارل هاينز رومينيغه',
    'فرانكو باريزي',
    'جيرد مولر',
    'فرانك ريكارد',
    'لويس فيغو',
    'روبرتو باجيو',
    'رونالد كومان',
    'بيتر شمايكل',
    'جورجي هاجي',
    'اوليفر كان',
    'راؤول',
    'كاماتشو ماركو',
    'إيريك كانتونا',
    'رود فان نستلروي',
    'غاري لينيكر',
    'أليساندرو نيستا',
    'ألساندرو دل بييرو',
    'ألساندرو كوستاكورتا',
  ];
  void withoutTalkingChangeQuestion() {
    fiveXTenCurrentQuestionIndex = Random().nextInt(withoutTalking.length);

    emit(
        GetRandomQuestionState()); // Start a new countdown for the next question
  }



  //3rosty and other games
  List<String> footballLegends = [
    'سيجوردسون',
    'بويان كريكيتش',
    'بيانيتش',
    'ديخيا',
    'فان دير سار',
    'جيجز',
    'سكولز',
    'جاري نيفيل',
    'جابرييل هاينز',
    'ريو فيرديناند',
    'فيديتش',
    'باتريس ايفرا',
    'جي سونج بارك',
    'كريستيانو رونالدو',
    'واين روني',
    'تيفيز',
    'خوان ماتا',
    'ماركوس روخو',
    'كريس سمولينج',
    'أندرية أونانا',
    'ليساندرو مارتينيز',
    'فاران',
    'ليندلوف',
    'هاري ماجواير',
    'لوك شاو',
    'وان بيساكا',
    'دييجو دالوت',
    'مكتوميناي',
    'كاسيميرو',
    'كريستيان إريكسن',
    'برونو فيرنانديز',
    'ماركوس راشفورد',
    'جادون سانشو',
    'انتوني',
    'مارسيال',
    'هويلاند',
    'فيجوريست',
    'أشلي يونج',
    'فالنسيا',
    'حنبعل المجبري',
    'جرينوود',
  ];

}
