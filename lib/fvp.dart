// Copyright 2022 Wang Bin. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// won't be exporteds in a future version
export 'src/video_player_mdk.dart';

import 'src/video_player_mdk.dart';

/// Registers this plugin as the default instance of [VideoPlayerPlatform]. Then your [VideoPlayer] will support all platforms.

/// [options] can be
/// "video.decoders": a list of decoder names. supported decoders: https://github.com/wang-bin/mdk-sdk/wiki/Decoders
/// "maxWidth", "maxHeight": texture max size. if not set, video frame size is used. a small value can reduce memory cost, but may result in lower image quality.
///
/// ```dart
/// registerWith({options: {
///     'video.decoders': ['BRAW:scale=1/4', 'auto'],
///     'maxWidth': screenWidth,
///     'maxHeight': screenHeight,
///   }});
/// ```
///
void registerWith({dynamic options}) {
  MdkVideoPlayer.registerVideoPlayerPlatformsWith(options: options);
}

/*
bool isRegistered() {
  return VideoPlayerPlatform.instance.runtimeType == MdkVideoPlayer;
}
*/