class FfmpegBinary < Formula
    desc "FFmpeg binary for Mac."
    homepage "http://www.ffmpegmac.net/"
    version "3.2.2"

    url "http://www.ffmpegmac.net/resources/Lion_Mountain_Lion_Mavericks_Yosemite_El-Captain_08.12.2016.zip"
    sha256 "f95b3d7bc07e5078bb1100beacdb76a365f0af8a6580a51db7300f4e8502cf8c"

    bottle :unneeded
    conflicts_with "ffmpeg"

    def install
        libexec.install Dir["*"]
        bin.install_symlink Dir["#{libexec}/*"]
    end
end
