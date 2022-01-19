class FfmpegBinary < Formula
    desc "FFmpeg Static Builds."
    homepage "https://www.ffmpeg.org"
    version "5.0"

    url "https://evermeet.cx/ffmpeg/ffmpeg-5.0.7z"
    sha256 "2492b8d8ab568a719f5b0e2c5b3cd1a457be08a048e97e2c5558ea0816508154"

    conflicts_with "ffmpeg"

    def install
        libexec.install Dir["*"]
        bin.install_symlink Dir["#{libexec}/*"]
    end
end
