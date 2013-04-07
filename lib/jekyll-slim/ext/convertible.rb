module Jekyll
  class Layout
    def content
      if ext == '.slim' && @converted != true
        @content = ::Slim::Template.new{ @content }.render
        @converted = true
      else
        @content
      end
    end
  end
end
