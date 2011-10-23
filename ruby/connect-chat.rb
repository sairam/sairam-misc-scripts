require 'socket'
require 'openssl'

require 'chilkat'
s = TCPSocket.open('localhost',1564)

s.puts "hello world" 
while line = s.gets
	puts line.chop
end
s.close
