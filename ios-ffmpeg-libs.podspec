Pod::Spec.new do |s|
  s.name         = 'ios-ffmpeg-libs'
  s.platform     = :ios, "11.0"
  s.version      = '0.0.4'
  s.summary      = "Precompiled FFmpg libs for iOS"
  s.description  = <<-DESC
Precompiled FFmpg libs to use e.g. with the https://github.com/kolyvan/kxmovie project. The KxMovie project includes only dated versions of the FFmpg libs which lack 64-bit simulator support and include various unsupported architectures for iOS11+.

For examples of use in an app, see the Nabto iOS RTSP demo at https://github.com/nabto/nabto-ios-rtsp.

The FFmpg source from which the binaries were built can be found here: https://github.com/FFmpeg/FFmpeg

When using these libs, notice that FFmpg is under LGPL: https://www.ffmpeg.org/legal.html.
DESC
  s.homepage     = 'https://github.com/nabto/ios-ffmpeg-libs'
  s.license      = "LGPL"
  s.author       = { "Nabto" => "apps@nabto.com" }

  s.source           = { :http => "https://downloads.nabto.com/assets/ios-ffmpeg-libs/0.0.1/ios-ffmpeg-libs.zip" }

  s.source_files = "Libs", "Headers/**/*.h"
  s.header_mappings_dir = "Headers/"
#  s.public_header_files = "Headers/**/*.h"
  s.frameworks = "MediaPlayer", "CoreAudio", "AudioToolbox", "Accelerate", "QuartzCore", "OpenGLES"
  s.ios.libraries = "z", "iconv"
  s.vendored_libraries = "Libs/libavcodec.a", "Libs/libavdevice.a", "Libs/libavfilter.a", "Libs/libavformat.a", "Libs/libavutil.a", "Libs/libswscale.a", "Libs/libswresample.a"
end

