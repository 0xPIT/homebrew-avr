require 'formula'

class AvrBinutils < Formula
  url 'http://ftp.gnu.org/gnu/binutils/binutils-2.24.tar.bz2'
  homepage 'http://www.gnu.org/software/binutils/binutils.html'
  md5 'e0f71a7b2ddab0f8612336ac81d9636b'

  def options
    [["--disable-libbfd", "Disable installation of libbfd."]]
  end

  def install

    if MacOS.lion?
      ENV['CC'] = 'clang'
    end

    ENV['CPPFLAGS'] = "-I#{include}"

    args = ["--prefix=#{prefix}",
            "--infodir=#{info}",
            "--mandir=#{man}",
            "--disable-werror",
            "--disable-nls"]

    unless ARGV.include? '--disable-libbfd'
      Dir.chdir "bfd" do
        ohai "building libbfd"
        system "./configure", "--enable-install-libbfd", *args
        system "make"
        system "make install"
      end
    end

    # brew's build environment is in our way
    ENV.delete 'CFLAGS'
    ENV.delete 'CXXFLAGS'
    ENV.delete 'LD'
    ENV.delete 'CC'
    ENV.delete 'CXX'

    if MacOS.lion?
      ENV['CC'] = 'clang'
    end

    system "./configure", "--target=avr", *args

    system "make"
    system "make install"
  end
end
