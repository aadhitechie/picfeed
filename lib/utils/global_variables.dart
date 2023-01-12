import 'package:flutter/material.dart';
import 'package:picfeed/screens/add_post_screen.dart';
import 'package:picfeed/screens/feed_screen.dart';

const webScreenSize = 600;
const homeScreenItems = [
  FeedScreen(),
  Text('search'),
  AddPostScreen(),
  Text('favorite'),
  Text('profile'),
];
