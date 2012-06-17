require 'redcarpet'

class Slides
  def initialize
    @slide_names ||= Dir.glob("slides/*.markdown").sort
    @redcarpet = Redcarpet::Markdown.new(Redcarpet::Render::HTML,
                                          :autolink => true,
                                          :space_after_headers => true,
                                          :tables => true,
                                          :fenced_code_blocks => true)
  end

  def markdowns
    @markdowns ||= @slide_names.map do |slide|
      File.open(slide, "r").read
    end
  end

  def concatenated_html
    @concatenated_html ||= markdowns.reduce("") do |html, markdown|
      html << "\n<div class='slide'>\n#{@redcarpet.render(markdown)}\n</div>\n"
    end
  end

  def create
    template = File.open("presentation.html.template", "r").read
    content_to_write = template.sub('TO-BE-REPLACED', concatenated_html)
    File.open("presentation.html", "w").write(content_to_write)
  end
end


desc "Create presentaion.html"
task :default do
  Slides.new.create
end
