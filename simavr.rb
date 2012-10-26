require 'formula'

class Simavr < Formula
  homepage 'hhttp://gitorious.org/simavr/pages/Home'
  head 'http://gitorious.org/simavr/simavr/archive-tarball/master'

  depends_on '0xPIT/avr/avr-gcc'
  depends_on '0xPIT/avr/avr-libc'
  depends_on 'libelf'

  def install
    ENV.delete 'CFLAGS'
    ENV.delete 'CXXFLAGS'
    ENV.delete 'LD'
    ENV.delete 'CC'
    ENV.delete 'CXX'
    
    if MacOS.lion?
      ENV['CC'] = 'clang'
    end

    system 'make build-simavr install'

  end
end

 
