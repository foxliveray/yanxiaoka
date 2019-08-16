import 'package:flutter/material.dart';

import 'programme.dart';
import 'service_item.dart';
import 'custom_icons.dart';

/// 喜马拉雅 - 相声节目清单
const List<ProgrammeViewModel> programmeList = [
  ProgrammeViewModel(
    title: '儿歌一',
    playsCount: 363182465,
    needVip: false,
    coverImgUrl:
    'http://imagev2.xmcdn.com/group61/M0A/5D/74/wKgMcF0IoUmCLEZIAAfqML_y44E351.jpg!op_type=5&upload_type=album&device_type=ios&name=large&magick=png',
  ),
  ProgrammeViewModel(
    title: '儿歌二',
    playsCount: 10236432,
    needVip: false,
    coverImgUrl:
    'http://imagev2.xmcdn.com/group43/M01/AC/C8/wKgKklskehLi4XS1AARLpcjABqA907.jpg!op_type=5&upload_type=album&device_type=ios&name=large&magick=png',
  ),
  ProgrammeViewModel(
    title: '儿歌三',
    playsCount: 8628885,
    needVip: true,
    coverImgUrl:
    'http://imagev2.xmcdn.com/group63/M02/5E/4C/wKgMaF0IomXwR0fMAAbRPUR6d-E118.jpg!op_type=5&upload_type=album&device_type=ios&name=large&magick=png',
  ),
  ProgrammeViewModel(
    title: '诗歌一',
    playsCount: 35346856,
    needVip: false,
    coverImgUrl:
    'http://imagev2.xmcdn.com/group61/M01/5D/AD/wKgMZl0Io4zSQaoqAApJnId5Fxs220.jpg!op_type=5&upload_type=album&device_type=ios&name=large&magick=png',
  ),
  ProgrammeViewModel(
    title: '诗歌二',
    playsCount: 17787252,
    needVip: true,
    coverImgUrl:
    'http://imagev2.xmcdn.com/group63/M04/60/DB/wKgMaF0Ir5bAs3I6AAi5jSpprHU406.jpg!op_type=5&upload_type=album&device_type=ios&name=large&magick=png',
  ),
  ProgrammeViewModel(
    title: '诗歌三',
    playsCount: 10361,
    needVip: false,
    coverImgUrl:
    'http://imagev2.xmcdn.com/group63/M04/11/7C/wKgMaF0hpLWDI57SAALanlUKN40914.jpg!op_type=5&upload_type=album&device_type=ios&name=large&magick=png',
  ),
];

/// 美团 - 服务菜单
const List<ServiceItemViewModel> serviceList = [
  ServiceItemViewModel(
    title: '精选早餐',
    icon: Icon(
      CustomIcons.breakFirst,
      size: 25,
      color: Colors.lightBlue,
    ),
  ),
  ServiceItemViewModel(
    title: '包子',
    icon: Icon(
      CustomIcons.baozi,
      size: 25,
      color: Colors.orangeAccent,
    ),
  ),
  ServiceItemViewModel(
    title: '炸鸡',
    icon: Icon(
      CustomIcons.friedFood,
      size: 29,
      color: Colors.deepOrangeAccent,
    ),
  ),
  ServiceItemViewModel(
    title: '网红甜品',
    icon: Icon(
      CustomIcons.sweetmeats,
      size: 30,
      color: Colors.pinkAccent,
    ),
  ),
  ServiceItemViewModel(
    title: '湘菜',
    icon: Icon(
      CustomIcons.xiangCuisine,
      size: 20,
      color: Colors.redAccent,
    ),
  ),
  ServiceItemViewModel(
    title: '减免配送费',
    icon: Icon(
      CustomIcons.truck,
      size: 25,
      color: Colors.orange,
    ),
  ),
  ServiceItemViewModel(
    title: '美团专送',
    icon: Icon(
      CustomIcons.motorbike,
      size: 28,
      color: Colors.blueAccent,
    ),
  ),
  ServiceItemViewModel(
    title: '到点自取',
    icon: Icon(
      CustomIcons.shop,
      size: 25,
      color: Colors.lightGreen,
    ),
  ),
  ServiceItemViewModel(
    title: '跑腿代购',
    icon: Icon(
      CustomIcons.errand,
      size: 25,
      color: Colors.red,
    ),
  ),
  ServiceItemViewModel(
    title: '全部分类',
    icon: Icon(
      CustomIcons.allCategories,
      size: 25,
      color: Colors.amber,
    ),
  ),
];