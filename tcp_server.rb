# frozen_string_literal: true
# change_flag = 1
require 'socket'

app = proc do
  ['200', { 'Content-Type' => 'text/html' }, ["Hello world.\n"]]
end

server = TCPServer.new 80

port = server.addr[1]

puts "Using port #{port}"

while (session = server.accept)

  request = session.gets

  puts request

  # 1

  status, headers, body = app.call({})

  # 2

  session.print "HTTP/1.1 #{status}\r\n"

  # 3

  headers.each do |key, value|
    session.print "#{key}: #{value}\r\n"
  end

  # 4

  session.print "\r\n"

  # 5

  body.each do |part|
    session.print part
  end

  session.close

end
Footer
