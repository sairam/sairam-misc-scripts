#!/usr/bin/ruby

require 'net/smtp'

smtpserver = 'localhost'
smtpport = 25

from_addr = 'sairam@example.com'
to_addr = 'sairam.kunala@example.com'
to_name = 'SaiRam'

message = <<MESSAGE_END
From: Sairam <#{from_addr}>
To: #{to_name} <#{to_addr}>
Subject: mail subject

mail sent to ya !

MESSAGE_END

Net::SMTP.start(smtpserver , smtpport) do |smtp|

  smtp.send_message message, from_addr, [to_addr]

end
