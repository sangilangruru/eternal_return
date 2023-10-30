import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class MainPage extends StatelessWidget{
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {

    final List<Map<String,String>> character = [
      {
        'name': '재키',
        'img': 'assets/zaeky.jpg'
      },{
        'name': '아야',
        'img': 'assets/aya.jpg'
      },{
        'name': '현우',
        'img': 'assets/hyunwoo.jpg'
      },{
        'name': '매그너스',
        'img': 'assets/magnus.jpg'
      },{
        'name': '피오라',
        'img': 'assets/fiora.jpg'
      },{
        'name': '나딘',
        'img': 'assets/nadin.jpg'
      },{
        'name': '자히르',
        'img': 'assets/zahir.jpg'
      },{
        'name': '하트',
        'img': 'assets/hart.jpg'
      },{
        'name': '아이솔',
        'img': 'assets/aisol.jpg'
      },{
        'name': '리다이린',
        'img': 'assets/ridairin.jpg'
      },{
        'name': '유키',
        'img': 'assets/yuki.jpg'
      },{
        'name': '혜진',
        'img': 'assets/hyejin.jpg'
      },{
        'name': '쇼우',
        'img': 'assets/syowoo.jpg'
      },{
        'name': '시셀라',
        'img': 'assets/sisella.jpg'
      },{
        'name': '키아라',
        'img': 'assets/kiara.jpg'
      },{
        'name': '아드리아나',
        'img': 'assets/adriana.jpg'
      },{
        'name': '쇼이치',
        'img': 'assets/syoichi.jpg'
      },{
        'name': '실비아',
        'img': 'assets/silvia.jpg'
      },{
        'name': '엠마',
        'img': 'assets/emma.jpg'
      },{
        'name': '레녹스',
        'img': 'assets/renox.jpg'
      },{
        'name': '로지',
        'img': 'assets/rozi.jpg'
      },{
        'name': '루크',
        'img': 'assets/ruku.jpg'
      },{
        'name': '캐시',
        'img': 'assets/cash.jpg'
      },{
        'name': '아델라',
        'img': 'assets/adela.jpg'
      },{
        'name': '버니스',
        'img': 'assets/bunis.jpg'
      },{
        'name': '바바라',
        'img': 'assets/babara.jpg'
      },{
        'name': '알렉스',
        'img': 'assets/alex.jpg'
      },{
        'name': '수아',
        'img': 'assets/sua.jpg'
      },{
        'name': '레온',
        'img': 'assets/reon.jpg'
      },{
        'name': '일레븐',
        'img': 'assets/eleven.jpg'
      },{
        'name': '리오',
        'img': 'assets/lio.jpg'
      },{
        'name': '윌리엄',
        'img': 'assets/willium.jpg'
      },{
        'name': '니키',
        'img': 'assets/niki.jpg'
      },{
        'name': '나타폰',
        'img': 'assets/natafon.jpg'
      },{
        'name': '얀',
        'img': 'assets/yan.jpg'
      },{
        'name': '이바',
        'img': 'assets/iva.jpg'
      },{
        'name': '다니엘',
        'img': 'assets/daniel.jpg'
      },{
        'name': '제니',
        'img': 'assets/jeni.jpg'
      },{
        'name': '카밀로',
        'img': 'assets/kamilo.jpg'
      },{
        'name': '클로에',
        'img': 'assets/cloe.jpg'
      },{
        'name': '요한',
        'img': 'assets/yohan.jpg'
      },{
        'name': '비앙카',
        'img': 'assets/viangka.jpg'
      },{
        'name': '셀린',
        'img': 'assets/sellin.jpg'
      },{
        'name': '에키온',
        'img': 'assets/ekion.jpg'
      },{
        'name': '마이',
        'img': 'assets/my.jpg'
      },{
        'name': '에이든',
        'img': 'assets/eideun.jpg'
      },{
        'name': '라우라',
        'img': 'assets/raura.jpg'
      },{
        'name': '띠아',
        'img': 'assets/thia.jpg'
      },{
        'name': '펠릭스',
        'img': 'assets/felix.jpg'
      },{
        'name': '엘레나',
        'img': 'assets/ellena.jpg'
      },{
        'name': '프리야',
        'img': 'assets/priya.jpg'
      },{
        'name': '아디나',
        'img': 'assets/adina.jpg'
      },{
        'name': '마커스',
        'img': 'assets/makus.jpg'
      },{
        'name': '칼라',
        'img': 'assets/kalla.jpg'
      },{
        'name': '에스텔',
        'img': 'assets/estel.jpg'
      },{
        'name': '피올로',
        'img': 'assets/piollo.jpg'
      },{
        'name': '마르티나',
        'img': 'assets/martina.jpg'
      },{
        'name': '헤이즈',
        'img': 'assets/heyz.jpg'
      },{
        'name': '아이작',
        'img': 'assets/aizac.jpg'
      },{
        'name': '타지아',
        'img': 'assets/tajia.jpg'
      },{
        'name': '이렘',
        'img': 'assets/irem.jpg'
      },{
        'name': '테오도르',
        'img': 'assets/teodor.jpg'
      },{
        'name': '이안',
        'img': 'assets/ian.jpg'
      },{
        'name': '바냐',
        'img': 'assets/banya.jpg'
      },{
        'name': '데비&마를렌',
        'img': 'assets/devi&marlen.jpg'
      },{
        'name': '아르다',
        'img': 'assets/arda.jpg'
      },{
        'name': '아비게일',
        'img': 'assets/avigail.jpg'
      }
    ];

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          "이터널 리턴 가이드",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        color: Colors.black,
        child: _buildList(context, character)
      )
    );
  }

  Widget _buildList(BuildContext context, List<Map<String,String>> result) {

    onHeartTap() async {
      // final likeToons = prefs.getStringList('likedToons');
      //
      // if (likeToons != null && likeToons.isNotEmpty) {
      //   likeToons.remove(widget.id);
      // } else {
      //   likeToons!.add(widget.id);
      // }
      //
      // await prefs.setStringList('likedToons', likeToons);
      // setState(() {
      //   isLiked = !isLiked;
      // });
    }

    return GridView.builder(
      itemCount: result.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisSpacing: 5,
        crossAxisSpacing: 5,
        crossAxisCount: 5,
      ),
      itemBuilder: (BuildContext context, int index) {
        Map item = result[index];
        // 실험체 리스트
        return Column(
          children: [
            // 이미지와 관심버튼 겹치게 하기위해 Stack 사용
            Stack(children: [
              Image.asset(item["img"], alignment: Alignment.topCenter,width: 100,),
              //관심 버튼
              IconButton(
                  onPressed: () {onHeartTap();},
                  icon: Icon(Icons.favorite_border))
            ],),
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