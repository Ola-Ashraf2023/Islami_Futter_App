import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/models/sura_model.dart';
import 'package:islami_app/my_theme_data.dart';
import 'package:islami_app/sura_details.dart';

class QuranTab extends StatelessWidget {
  List<String> suraNames = [
    "الفاتحه",
    "البقرة",
    "آل عمران",
    "النساء",
    "المائدة",
    "الأنعام",
    "الأعراف",
    "الأنفال",
    "التوبة",
    "يونس",
    "هود",
    "يوسف",
    "الرعد",
    "إبراهيم",
    "الحجر",
    "النحل",
    "الإسراء",
    "الكهف",
    "مريم",
    "طه",
    "الأنبياء",
    "الحج",
    "المؤمنون",
    "النّور",
    "الفرقان",
    "الشعراء",
    "النّمل",
    "القصص",
    "العنكبوت",
    "الرّوم",
    "لقمان",
    "السجدة",
    "الأحزاب",
    "سبأ",
    "فاطر",
    "يس",
    "الصافات",
    "ص",
    "الزمر",
    "غافر",
    "فصّلت",
    "الشورى",
    "الزخرف",
    "الدّخان",
    "الجاثية",
    "الأحقاف",
    "محمد",
    "الفتح",
    "الحجرات",
    "ق",
    "الذاريات",
    "الطور",
    "النجم",
    "القمر",
    "الرحمن",
    "الواقعة",
    "الحديد",
    "المجادلة",
    "الحشر",
    "الممتحنة",
    "الصف",
    "الجمعة",
    "المنافقون",
    "التغابن",
    "الطلاق",
    "التحريم",
    "الملك",
    "القلم",
    "الحاقة",
    "المعارج",
    "نوح",
    "الجن",
    "المزّمّل",
    "المدّثر",
    "القيامة",
    "الإنسان",
    "المرسلات",
    "النبأ",
    "النازعات",
    "عبس",
    "التكوير",
    "الإنفطار",
    "المطفّفين",
    "الإنشقاق",
    "البروج",
    "الطارق",
    "الأعلى",
    "الغاشية",
    "الفجر",
    "البلد",
    "الشمس",
    "الليل",
    "الضحى",
    "الشرح",
    "التين",
    "العلق",
    "القدر",
    "البينة",
    "الزلزلة",
    "العاديات",
    "القارعة",
    "التكاثر",
    "العصر",
    "الهمزة",
    "الفيل",
    "قريش",
    "الماعون",
    "الكوثر",
    "الكافرون",
    "النصر",
    "المسد",
    "الإخلاص",
    "الفلق",
    "الناس"
  ];
  List<int> num_verses = [
    7,
    286,
    200,
    176,
    120,
    165,
    206,
    75,
    129,
    109,
    123,
    111,
    43,
    52,
    99,
    128,
    111,
    110,
    98,
    135,
    112,
    78,
    118,
    64,
    77,
    227,
    93,
    88,
    69,
    60,
    34,
    30,
    73,
    54,
    45,
    83,
    182,
    88,
    75,
    85,
    54,
    53,
    89,
    59,
    37,
    35,
    38,
    29,
    18,
    45,
    60,
    49,
    62,
    55,
    78,
    96,
    29,
    22,
    24,
    13,
    14,
    11,
    11,
    18,
    12,
    12,
    30,
    52,
    52,
    44,
    28,
    28,
    20,
    56,
    40,
    31,
    50,
    40,
    46,
    42,
    29,
    19,
    36,
    25,
    22,
    17,
    19,
    26,
    30,
    20,
    15,
    21,
    11,
    8,
    8,
    19,
    5,
    8,
    8,
    11,
    11,
    8,
    3,
    9,
    5,
    4,
    7,
    3,
    6,
    3,
    5,
    4,
    5,
    6
  ];
  List<TableRow> myRows = [];
  TableRow temp1 = TableRow(children: [
    TableCell(
        child: Container(
            alignment: Alignment.center,
            child: Text(
              "Sura Names".tr(),
            )),
        verticalAlignment: TableCellVerticalAlignment.middle),
    TableCell(
        child: Container(
            alignment: Alignment.center, child: Text("Verses number".tr()))),
  ]);

  QuranTab() {
    myRows.add(temp1);
    for (int i = 0; i < suraNames.length; i++) {
      TableRow temp = TableRow(children: [
        TableCell(
            child: Text(
              " ${suraNames[i]}",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25),
            )),
        TableCell(
            child: Text(
              " ${num_verses[i]}",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25),
            )),
      ]);
      myRows.add(temp);
    }
    //print("inside quran tab language is ${EasyLocalization.of(context)!.currentLocale.toString()}")
  }

  @override
  Widget build(BuildContext context) {
    if (EasyLocalization.of(context)!.currentLocale.toString() == "ar") {
      myRows[0] = TableRow(children: [
        TableCell(
            child: Container(
                alignment: Alignment.center,
                child: Text(
                  "السور".tr(),
                )),
            verticalAlignment: TableCellVerticalAlignment.middle),
        TableCell(
            child: Container(
                alignment: Alignment.center, child: Text("الآيـــات".tr()))),
      ]);
    } else {
      myRows[0] = TableRow(children: [
        TableCell(
            child: Container(
                alignment: Alignment.center,
                child: Text(
                  "Sura Names".tr(),
                )),
            verticalAlignment: TableCellVerticalAlignment.middle),
        TableCell(
            child: Container(
                alignment: Alignment.center, child: Text("Verses".tr()))),
      ]);
    }
    return Scaffold(
      body: Column(
        children: [
          //Text(EasyLocalization.of(context)!.currentLocale.toString()),
          Container(
            child: Image.asset("assets/images/quran_image.png"),
          ),
          Expanded(
              child: ListView.builder(
            itemCount: myRows.length,
            itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, SuraDetails.routeName,
                          arguments: SuraModel(suraNames[index - 1], index - 1));
                    },
                    child: Table(
                      border: TableBorder.all(color: MyThemeData.primary),
                      children: [
                        myRows[index],
                      ],
                    ),
                  );
                },
              )),
        ],
      ),
    );
  }
}
