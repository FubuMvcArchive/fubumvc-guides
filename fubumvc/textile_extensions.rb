module FubuMvc
  module TextileExtensions
    def notestuff(body)
      body.gsub!(/^(IMPORTANT|CAUTION|WARNING|NOTE|INFO)(?:\.|\:)(.*)$/) do |m|
        css_class = $1.downcase
        css_class = 'warning' if ['caution', 'important'].include?(css_class)

        result = "<div class='#{css_class}'><p>"
        result << $2.strip
        result << '</p></div>'
        result
      end
    end

    def tip(body)
      body.gsub!(/^(TIP)\:(.*)$/) do |m|
        result = "<div class='info'><p>"
        result << $2.strip
        result << '</p></div>'
        result
      end
    end

    def plusplus(body)
      body.gsub!(/\+(.*?)\+/) do |m|
        "<notextile><tt>#{$1}</tt></notextile>"
      end

      # The real plus sign
      body.gsub!('<plus>', '+')
    end

    def code(body)
      body.gsub!(%r{<(yaml|shell|ruby|erb|html|sql|plain)>(.*?)</\1>}m) do |m|
        es = ERB::Util.h($2)
        css_class = ['erb', 'shell'].include?($1) ? 'html' : $1
        %{<notextile><div class="code_container"><code class="#{css_class}">#{es}</code></div></notextile>}
      end
    end
    
    def importcode(body)
      body.gsub!(/^CODE\[(\d+),(\d+)\]\.(.*)$/) do |m|
        start_line = Integer($1) - 1
        end_line = Integer($2)
        length = end_line - start_line
        pwd = File.dirname(__FILE__)
        contents = IO.readlines(pwd + "/../" + $3.strip)       
        contents_split = contents.slice(start_line, length)
        es = ERB::Util.h(contents_split.join(""))        
        result = "<notextile><div class='code_container'><code class='html'>\n"
        result << es
        result << "\n</code></div></notextile>"
        result
      end
    end
        
  end
end
