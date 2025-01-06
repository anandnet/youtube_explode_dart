import 'package:youtube_explode_dart/youtube_explode_dart.dart';

void main() async {
  YoutubeExplode yt = YoutubeExplode();
  // check time of execution
  DateTime start = DateTime.now();
  try {
    print("\n=================SAFARI=========================");
    final manifest = await yt.videos.streams.getManifest(
        requireWatchPage: true,
        "D49nMgP7Vzc",
        ytClients: [YoutubeApiClient.safari]);
    for (var _ in manifest.audioOnly) {
      print("${_.codec} ${_.tag}");
    }
  } catch (e) {
    print("$e");
  }
  DateTime end = DateTime.now();
  print(
      "====================Time taken: ${end.difference(start).inMilliseconds}ms by safari======\n\n");
  start = DateTime.now();
  try {
    print("\n===================ANDROID_VR=======================");
    final manifest = await yt.videos.streams.getManifest(
        requireWatchPage: false,
        "D49nMgP7Vzc",
        ytClients: [YoutubeApiClient.androidVr]);
    for (var _ in manifest.audioOnly) {
      print("${_.codec} ${_.tag}");
    }
  } catch (e) {
    print("$e");
  }
  end = DateTime.now();
  print(
      "====================Time taken: ${end.difference(start).inMilliseconds}ms by androidVr======\n\n");
  start = DateTime.now();
  try {
    print("\n====================ANDROID======================");
    final manifest = await yt.videos.streams.getManifest(
        requireWatchPage: true,
        "D49nMgP7Vzc",
        ytClients: [YoutubeApiClient.android]);
    for (var _ in manifest.audioOnly) {
      print("${_.codec} ${_.tag}");
      if (_.tag == 600) {
        print(_.url);
        print(_.size);
      }
    }
  } catch (e) {
    print("$e");
  }
  end = DateTime.now();
  print(
      "====================Time taken: ${end.difference(start).inMilliseconds}ms by android======\n\n");
  start = DateTime.now();
  try {
    print("\n=====================MWEB=====================");
    final manifest = await yt.videos.streams.getManifest(
        requireWatchPage: true,
        "D49nMgP7Vzc",
        ytClients: [YoutubeApiClient.mweb]);
    for (var _ in manifest.audioOnly) {
      print("${_.codec} ${_.tag}");
    }
  } catch (e) {
    print("$e");
  }
  end = DateTime.now();
  print(
      "====================Time taken: ${end.difference(start).inMilliseconds}ms by mweb======\n\n");
  start = DateTime.now();
  try {
    print("\n====================IOS======================");
    final manifest = await yt.videos.streams.getManifest(
        requireWatchPage: false,
        "D49nMgP7Vzc",
        ytClients: [YoutubeApiClient.ios]);
    for (var _ in manifest.audioOnly) {
      print("${_.codec} ${_.tag}");
    }
  } catch (e) {
    print("$e");
  }
  end = DateTime.now();
  print(
      "====================Time taken: ${end.difference(start).inMilliseconds}ms by ios======\n\n");
  start = DateTime.now();
  try {
    print("\n====================TV======================");
    final manifest = await yt.videos.streams.getManifest(
        requireWatchPage: true,
        "D49nMgP7Vzc",
        ytClients: [YoutubeApiClient.tv]);
    for (var _ in manifest.audioOnly) {
      print("${_.codec} ${_.tag}");
    }
  } catch (e) {
    print("$e");
  }
  end = DateTime.now();
  print(
      "====================Time taken: ${end.difference(start).inMilliseconds}ms by tv");
}
