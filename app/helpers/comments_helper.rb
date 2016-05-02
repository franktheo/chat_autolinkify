module CommentsHelper

  def linkify(text)
    @generic_URL_regexp = Regexp.new( '(^|[\n ])([\w]+?://[\w]+[^ \"\n\r\t<]*)', Regexp::MULTILINE | Regexp::IGNORECASE )
    @email_regexp = Regexp.new( '(^|[\n ])([a-z0-9&\-_\.]+?)@([\w\-]+\.([\w\-\.]+\.)*[\w]+)', Regexp::IGNORECASE )
    s = text.to_s
    s_linkified_tmp = s.gsub( @generic_URL_regexp, ' <a href="\1\2">\1\2</a>')
    s_linkified = s_linkified_tmp.gsub( @email_regexp, ' <a href="mailto:\1\2%40\3">\1\2@\3</a>')
    return s_linkified
  end

end
