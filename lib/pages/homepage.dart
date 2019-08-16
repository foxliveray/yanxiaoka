import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import '../widgets/item_count_title.dart';
import '../model/post.dart';
import '../griddemo/programme.dart';
import '../griddemo/mock_data.dart';

typedef TapCallback = void Function();

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('言小咖'),
      ),
      body: new Center(
        child: SwiperView(),
      ),
    );
  }

}

class SwiperView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SwiperViewState();
  }

}

class SwiperViewState extends State<SwiperView>{
  // 声明一个list，存放image Widget
  List<Widget> imageList = List();

  @override
  void initState() {
    imageList
      ..add(Image.network('https://resources.ninghao.org/images/candy-shop.jpg',
        fit: BoxFit.fill,
      ))
      ..add(Image.network('https://resources.ninghao.org/images/childhood-in-a-picture.jpg',
        fit: BoxFit.fill,
      ))
      ..add(Image.network('https://resources.ninghao.org/images/contained.jpg',
        fit: BoxFit.fill,
      ))
      ..add(Image.network('https://resources.ninghao.org/images/dragon.jpg',
        fit: BoxFit.fill,
      ));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        children: <Widget>[
          firstSwiperView(),
          TitleWidget(),
          Container(
            child: Padding(
              padding: EdgeInsets.only(left:25.0,top:10.0,right:20.0,bottom:5.0),
              child: ItemCountTitle(
                '主修课',
                fontSize:20.0,
                count: 10,),
            ),
          ),
          Container(
            height: 270 ,
            padding: EdgeInsets.only(left:20.0,top:0.0,right:20.0,bottom:5.0),
            child: Card(
              child: InkWell(
                splashColor: Colors.blue.withAlpha(30),
                child: Column(
                  children: <Widget>[
                    Container(
                      width: 350,
                      height: 220,
                      padding: EdgeInsets.all(10.0),
                      child: Image.network('https://resources.ninghao.org/images/candy-shop.jpg',fit:BoxFit.cover),
                    ),
                    Container(
                      width: 350,
                      height: 30,
                      alignment: Alignment.topCenter,
                      child: Text("言小咖口才课",style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold),),
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: EdgeInsets.only(left:25.0,top:10.0,right:20.0,bottom:5.0),
              child: ItemCountTitle(
                '儿歌系列',
                fontSize:20.0,
                count: 15,),
            ),
          ),
          GridView.builder(
            shrinkWrap: true,
            itemCount: 3,
            physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: 0.8,
            ),
            itemBuilder: (context, index) {
              return Programme(data: programmeList[index]);
            },
          ),
          Container(
            child: Padding(
              padding: EdgeInsets.only(left:25.0,top:0.0,right:20.0,bottom:5.0),
              child: ItemCountTitle(
                '诗歌系列',
                fontSize:20.0,
                count: 15,),
            ),
          ),
          GridView.builder(
            shrinkWrap: true,
            itemCount: 3,
            physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: 0.8,
            ),
            itemBuilder: (context, index) {
              return Programme(data: programmeList[index+3]);
            },
          )
        ],
      ),
    );
  }

  Widget firstSwiperView() {
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 15),
      width: MediaQuery.of(context).size.width,
      height: 250,
      child: Swiper(
        itemCount: 4,
        itemBuilder: _swiperBuilder,
        pagination: SwiperPagination(
            alignment: Alignment.bottomCenter,
            margin: const EdgeInsets.fromLTRB(0, 0, 20, 10),
            builder: DotSwiperPaginationBuilder(
                color: Colors.black54,
                activeColor: Colors.white
            )
        ),
        controller: SwiperController(),
        scrollDirection: Axis.horizontal,
        autoplay: true,
        onTap: (index) => print('点击了第$index'),
      ),
    );
  }

  Widget _swiperBuilder(BuildContext context, int index) {
    return (imageList[index]);
  }

}

// 顶部四个TAB
class TitleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        _TextImgWidget(
          '签到有礼',
          'assets/images/find_movie.png',
          tabCallBack: () {
            print('点击找电影');
            //Router.push(context, Router.searchPage, '找电影');
          },
        ),
        _TextImgWidget(
          '作品榜',
          'assets/images/douban_top.png',
          tabCallBack: () {
            print('点击豆瓣榜单');

          },
        ),
        _TextImgWidget(
          '人气榜',
          'assets/images/douban_guess.png',
          tabCallBack: () {

          },
        ),
        _TextImgWidget(
          '今日推荐',
          'assets/images/douban_film_list.png',
          tabCallBack: () {

          },
        )
      ],
    );
  }
}

class _TextImgWidget extends StatelessWidget {
  final String text;
  final String imgAsset;
  final TapCallback tabCallBack;

  _TextImgWidget(
      this.text,
      this.imgAsset, {
        Key key,
        this.tabCallBack,
      }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (tabCallBack != null) {
          tabCallBack();
        }
      },
      child: Column(
        children: <Widget>[
          Image.asset(
            imgAsset,
            width: 45,
            height: 45,
          ),
          Text(
            text,
            style: TextStyle(
                fontSize: 13,
                color: Color.fromARGB(
                  255,
                  128,
                  128,
                  128,
                )),
          )
        ],
      ),
    );
  }
}

//class GridWidget extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return 
//  }
//  
//}