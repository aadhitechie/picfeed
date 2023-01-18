import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:picfeed/screens/add_post_screen.dart';
import 'package:picfeed/screens/feed_screen.dart';
import 'package:picfeed/screens/profile_screen.dart';
import 'package:picfeed/screens/search_screen.dart';

const webScreenSize = 600;
List<Widget> homeScreenItems = [
  const FeedScreen(),
  const SearchScreen(),
  const AddPostScreen(),
  const Text('Notification'),
  ProfileScreen(
    uid: FirebaseAuth.instance.currentUser!.uid,
  ),
];
