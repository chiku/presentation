class Slides
  def initialize
    @slide_names = Dir.glob("slides/*.markdown").sort
  end

  def markdowns
    @slide_names.map do |slide|
      File.open(slide, "r").read
    end
  end

  def concatenated_markdown
    markdowns.join("\n\n---\n\n")
  end

  def create
    template = File.open("presentation.html.template", "r").read
    content_to_write = template.sub('TO-BE-REPLACED', concatenated_markdown)
    File.open("presentation.html", "w").write(content_to_write)
  end
end

desc "Create presentation.html"
task :default do
  Slides.new.create
end
