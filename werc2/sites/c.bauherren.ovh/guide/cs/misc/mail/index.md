# email guide

- dmarc (domain based message authentication reporting and conformance)
	- Protects domain from unauthorized use. DMARC allows a sender to indicate that their messages are protected by SPF and/or DKIM, and tells a receiver what to do if neither of those authentication methods passes – such as junk or reject the message

- dkim
	- digital signature to let the receiver of an email know that the message was sent and authorized by the owner of a domain

- rDNS (reverse)
	- Link a server's IP to a domain name
	- DNS settings are set with registrars, while rDNS is set with your server or VPS

- rspamd
	- advanced spam filtering system and email processing framework. allows evaluation of messages by a number of rules including regular expressions, statistical analysis and custom services such as URL black lists

- spoof
	- technique used in spam and phishing attacks to trick users into thinking a message came from a person or entity they know or trust

- SPF 
	- email authentication standard to prevent spammers sending messages hat appear to come from a spoofed domain

imap 

pop3

