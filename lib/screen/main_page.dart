import 'package:eternal_return/screen/character_detail_page.dart';
import 'package:eternal_return/widget/appbar_widget.dart';
import 'package:eternal_return/widget/drawer_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MainPage extends StatefulWidget{
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  late SharedPreferences prefs;
  final List<Map<String,String>> character = [
    {
      'id' : '0',
      'name': '재키',
      'img': 'assets/zaeky.jpg',
      'like' : 'false'
    },{
      'id' : '1',
      'name': '아야',
      'img': 'assets/aya.jpg',
      'like' : 'false'
    },{
      'id' : '2',
      'name': '현우',
      'img': 'assets/hyunwoo.jpg',
      'like' : 'false'
    },{
      'id' : '3',
      'name': '매그너스',
      'img': 'assets/magnus.jpg',
      'like' : 'false'
    },{
      'id' : '4',
      'name': '피오라',
      'img': 'assets/fiora.jpg',
      'like' : 'false'
    },{
      'id' : '5',
      'name': '나딘',
      'img': 'assets/nadin.jpg',
      'like' : 'false'
    },{
      'id' : '6',
      'name': '자히르',
      'img': 'assets/zahir.jpg',
      'like' : 'false'
    },{
      'id' : '7',
      'name': '하트',
      'img': 'assets/hart.jpg',
      'like' : 'false'
    },{
      'id' : '8',
      'name': '아이솔',
      'img': 'assets/aisol.jpg',
      'like' : 'false'
    },{
      'id' : '9',
      'name': '리다이린',
      'img': 'assets/ridairin.jpg',
      'like' : 'false'
    },{
      'id' : '10',
      'name': '유키',
      'img': 'assets/yuki.jpg',
      'like' : 'false'
    },{
      'id' : '11',
      'name': '혜진',
      'img': 'assets/hyejin.jpg',
      'like' : 'false'
    },{
      'id' : '12',
      'name': '쇼우',
      'img': 'assets/syowoo.jpg',
      'like' : 'false'
    },{
      'id' : '13',
      'name': '시셀라',
      'img': 'assets/sisella.jpg',
      'like' : 'false'
    },{
      'id' : '14',
      'name': '키아라',
      'img': 'assets/kiara.jpg',
      'like' : 'false'
    },{
      'id' : '15',
      'name': '아드리아나',
      'img': 'assets/adriana.jpg',
      'like' : 'false'
    },{
      'id' : '16',
      'name': '쇼이치',
      'img': 'assets/syoichi.jpg',
      'like' : 'false'
    },{
      'id' : '17',
      'name': '실비아',
      'img': 'assets/silvia.jpg',
      'like' : 'false'
    },{
      'id' : '18',
      'name': '엠마',
      'img': 'assets/emma.jpg',
      'like' : 'false'
    },{
      'id' : '19',
      'name': '레녹스',
      'img': 'assets/renox.jpg',
      'like' : 'false'
    },{
      'id' : '20',
      'name': '로지',
      'img': 'assets/rozi.jpg',
      'like' : 'false'
    },{
      'id' : '21',
      'name': '루크',
      'img': 'assets/ruku.jpg',
      'like' : 'false'
    },{
      'id' : '22',
      'name': '캐시',
      'img': 'assets/cash.jpg',
      'like' : 'false'
    },{
      'id' : '23',
      'name': '아델라',
      'img': 'assets/adela.jpg',
      'like' : 'false'
    },{
      'id' : '24',
      'name': '버니스',
      'img': 'assets/bunis.jpg',
      'like' : 'false'
    },{
      'id' : '25',
      'name': '바바라',
      'img': 'assets/babara.jpg',
      'like' : 'false'
    },{
      'id' : '26',
      'name': '알렉스',
      'img': 'assets/alex.jpg',
      'like' : 'false'
    },{
      'id' : '27',
      'name': '수아',
      'img': 'assets/sua.jpg',
      'like' : 'false'
    },{
      'id' : '28',
      'name': '레온',
      'img': 'assets/reon.jpg',
      'like' : 'false'
    },{
      'id' : '29',
      'name': '일레븐',
      'img': 'assets/eleven.jpg',
      'like' : 'false'
    },{
      'id' : '30',
      'name': '리오',
      'img': 'assets/lio.jpg',
      'like' : 'false'
    },{
      'id' : '31',
      'name': '윌리엄',
      'img': 'assets/willium.jpg',
      'like' : 'false'
    },{
      'id' : '32',
      'name': '니키',
      'img': 'assets/niki.jpg',
      'like' : 'false'
    },{
      'id' : '33',
      'name': '나타폰',
      'img': 'assets/natafon.jpg',
      'like' : 'false'
    },{
      'id' : '34',
      'name': '얀',
      'img': 'assets/yan.jpg',
      'like' : 'false'
    },{
      'id' : '35',
      'name': '이바',
      'img': 'assets/iva.jpg',
      'like' : 'false'
    },{
      'id' : '36',
      'name': '다니엘',
      'img': 'assets/daniel.jpg',
      'like' : 'false'
    },{
      'id' : '37',
      'name': '제니',
      'img': 'assets/jeni.jpg',
      'like' : 'false'
    },{
      'id' : '38',
      'name': '카밀로',
      'img': 'assets/kamilo.jpg',
      'like' : 'false'
    },{
      'id' : '39',
      'name': '클로에',
      'img': 'assets/cloe.jpg',
      'like' : 'false'
    },{
      'id' : '40',
      'name': '요한',
      'img': 'assets/yohan.jpg',
      'like' : 'false'
    },{
      'id' : '41',
      'name': '비앙카',
      'img': 'assets/viangka.jpg',
      'like' : 'false'
    },{
      'id' : '42',
      'name': '셀린',
      'img': 'assets/sellin.jpg',
      'like' : 'false'
    },{
      'id' : '43',
      'name': '에키온',
      'img': 'assets/ekion.jpg',
      'like' : 'false'
    },{
      'id' : '44',
      'name': '마이',
      'img': 'assets/my.jpg',
      'like' : 'false'
    },{
      'id' : '45',
      'name': '에이든',
      'img': 'assets/eideun.jpg',
      'like' : 'false'
    },{
      'id' : '46',
      'name': '라우라',
      'img': 'assets/raura.jpg',
      'like' : 'false'
    },{
      'id' : '47',
      'name': '띠아',
      'img': 'assets/thia.jpg',
      'like' : 'false'
    },{
      'id' : '48',
      'name': '펠릭스',
      'img': 'assets/felix.jpg',
      'like' : 'false'
    },{
      'id' : '49',
      'name': '엘레나',
      'img': 'assets/ellena.jpg',
      'like' : 'false'
    },{
      'id' : '50',
      'name': '프리야',
      'img': 'assets/priya.jpg',
      'like' : 'false'
    },{
      'id' : '51',
      'name': '아디나',
      'img': 'assets/adina.jpg',
      'like' : 'false'
    },{
      'id' : '52',
      'name': '마커스',
      'img': 'assets/makus.jpg',
      'like' : 'false'
    },{
      'id' : '53',
      'name': '칼라',
      'img': 'assets/kalla.jpg',
      'like' : 'false'
    },{
      'id' : '54',
      'name': '에스텔',
      'img': 'assets/estel.jpg',
      'like' : 'false'
    },{
      'id' : '55',
      'name': '피올로',
      'img': 'assets/piollo.jpg',
      'like' : 'false'
    },{
      'id' : '56',
      'name': '마르티나',
      'img': 'assets/martina.jpg',
      'like' : 'false'
    },{
      'id' : '57',
      'name': '헤이즈',
      'img': 'assets/heyz.jpg',
      'like' : 'false'
    },{
      'id' : '58',
      'name': '아이작',
      'img': 'assets/aizac.jpg',
      'like' : 'false'
    },{
      'id' : '59',
      'name': '타지아',
      'img': 'assets/tajia.jpg',
      'like' : 'false'
    },{
      'id' : '60',
      'name': '이렘',
      'img': 'assets/irem.jpg',
      'like' : 'false'
    },{
      'id' : '61',
      'name': '테오도르',
      'img': 'assets/teodor.jpg',
      'like' : 'false'
    },{
      'id' : '62',
      'name': '이안',
      'img': 'assets/ian.jpg',
      'like' : 'false'
    },{
      'id' : '63',
      'name': '바냐',
      'img': 'assets/banya.jpg',
      'like' : 'false'
    },{
      'id' : '64',
      'name': '데비&마를렌',
      'img': 'assets/devi&marlen.jpg',
      'like' : 'false'
    },{
      'id' : '65',
      'name': '아르다',
      'img': 'assets/arda.jpg',
      'like' : 'false'
    },{
      'id' : '66',
      'name': '아비게일',
      'img': 'assets/avigail.jpg',
      'like' : 'false'
    }
  ];

  // init단계에서 관심 목록 불러오기
  Future initPrefs(id, index) async {
    prefs = await SharedPreferences.getInstance();
    final likedCharacter = prefs.getStringList('likedCharacter');

    if (likedCharacter != null && likedCharacter.isNotEmpty && likedCharacter != []) {
      if (likedCharacter.contains(id) == true) {
        setState(() {
          character[index]["like"] = "true";
        });
      }
    }else{
      await prefs.setStringList('likedCharacter', []);
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    for (int i=0; i<character.length;i++) {
      initPrefs(character[i]["id"], i);
    }
  }

  @override
  Widget build(BuildContext context) {

    // scaffoldKey를 전역으로 안뺼 경우 에러생기므로 뺌
    final scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      resizeToAvoidBottomInset: false,
        key: scaffoldKey,
        appBar: AppbarWidget(scaffoldKey: scaffoldKey, tabname: "실험체"),
        //drawer가 status바를 침범하므로 SafeArea 적용
        drawer: const SafeArea(
          child: Drawer(
            //Drawer 메뉴 위젯
              child: DrawerWidget(index: 0)
          ),
        ),
      body: Container(
        color: Colors.black,
        child: _buildList(context, character)
      )
    );
  }

  Widget _buildList(BuildContext context, List<Map<String,String>> result) {
    // 관심 버튼 클릭 시
    onHeartTap(id, index) async {
      final likedCharacter = prefs.getStringList('likedCharacter');
      // 값이 비어있거나 해당 id가 없으면 추가, 있으면 제거
      if (likedCharacter != null && likedCharacter.isNotEmpty) {
        if (likedCharacter.contains(id) == true) {
          likedCharacter.remove(id);
        } else {
          likedCharacter.add(id);
        }
      } else {
        likedCharacter!.add(id);
      }

      await prefs.setStringList('likedCharacter', likedCharacter);
      setState(() {
        character[index]["like"] = character[index]["like"] == "true" ? "false" : "true";
      });
    }

    return GridView.builder(
      itemCount: result.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisSpacing: 5,
        crossAxisSpacing: 5,
        crossAxisCount: 3,
      ),
      itemBuilder: (BuildContext context, int index) {
        Map item = result[index];
        // 실험체 리스트
        return Column(
          children: [
            // 이미지와 관심버튼 겹치게 하기위해 Stack 사용
            Stack(
              children: [
                // 이미지 클릭 시 상세화면 이동
                Hero(
                  tag: item["id"],
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => CharacterDetailPage(
                              name:item["name"], img:item["img"], id:item["id"]
                          )
                      ));
                    },
                    child: Image.asset(item["img"], alignment: Alignment.topCenter,width: 100,)
                  ),
                ),
                //관심 버튼
                IconButton(
                    alignment: Alignment.topLeft,
                    color: Colors.red,
                    onPressed: () {onHeartTap(item["id"], index);},
                    icon: Icon(character[index]["like"] == "true" ? Icons.favorite : Icons.favorite_outline)
                ),
              ],
            ),
            Container(
              color: Colors.grey,
              width: 100,
              child: Text(
                item["name"],
                textAlign: TextAlign.center,
                style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        );
     },
    );
  }
}