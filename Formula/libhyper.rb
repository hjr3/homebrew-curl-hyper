class Libhyper < Formula
  desc "Curl command-line tool using hyper as a backend"
  homepage "https://github.com/hyperium/hyper"
  url "https://github.com/hyperium/hyper/archive/refs/tags/v1.3.1.tar.gz"
  sha256 "b021ef7f0bd3e3481fab10e541aa21fe65af2055055e3149787b482d8b8b4e4b"
  license "MIT"

  depends_on "rust" => :build

  def install
    # RUSTFLAGS="--cfg hyper_unstable_ffi" cargo rustc --features client,server,http1,http2,ffi --crate-type cdylib
    with_env(
      "RUSTFLAGS" => "--cfg hyper_unstable_ffi",
    ) do
      system("cargo", "rustc", "--release", "--features", "client,server,http1,http2,ffi", "--crate-type", "cdylib")
      include.install "capi/include/hyper.h"
      lib.install "target/release/#{shared_library("libhyper")}"
    end
  end

  test do
    (testpath/"test.c").write <<~EOS
      #include <hyper.h>
      int main(int argc, char **argv) {
        hyper_io *io = hyper_io_new();
        return 0;
      }
    EOS
    system ENV.cc, "test.c", "-L#{lib}", "-lhyper", "-o", "test"
    system "./test"
  end
end
