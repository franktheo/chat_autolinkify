# -*- coding: utf-8 -*-

def linkify( text )
  @generic_URL_regexp = Regexp.new( '(^|[\n ])([\w]+?://[\w]+[^ \"\n\r\t<]*)', Regexp::MULTILINE | Regexp::IGNORECASE )
  @email_regexp = Regexp.new( '(^|[\n ])([a-z0-9&\-_\.]+?)@([\w\-]+\.([\w\-\.]+\.)*[\w]+)', Regexp::IGNORECASE )
  s = text.to_s
  s.gsub!( @generic_URL_regexp, ' <a href="\1\2">\1\2</a>')
  s.gsub!( @email_regexp, ' <a href="mailto:\1\2%40\3">\1\2@\3</a>')
  return s
end



require 'minitest/autorun'

class Tests < MiniTest::Unit::TestCase

  def test_http_link

    text = "http://google.com"
    s= linkify(text).to_s
    
    assert_equal " <a href=\"http://google.com\">http://google.com</a>", s
  end
  
  def test_email_link

    text = "alice@biba.com"
    s= linkify(text).to_s
    
    assert_equal " <a href=\"mailto:alice%40biba.com\">alice@biba.com</a>", s
  end

end


