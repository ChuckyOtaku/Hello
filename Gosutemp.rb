require "gosu"
#Main window class called from Gosu
class Template < Gosu::Window
  def initialize width=800, height=600, fullscreen=false
    super
#Text displayed at the top of the window
    self.caption = "Hello world!"
    @background_image = Gosu::Image.from_text("this text will be bold", 12,{bold: true})
  end

  def update
  end
  
  def draw
    @background_image.draw(0, 0, 0)
  end

def button_down id
    close if id == Gosu::KbEscape
end
#end of template class
end
#more classes go here
Template.new.show