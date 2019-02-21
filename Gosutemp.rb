require "gosu"

#Main window class called from Gosu
class Template < Gosu::Window
  def initialize width=900, height=600, fullscreen=false
    super
#Text displayed at the top of the window
    self.caption = "Hello world!"
#Define a text as a background image 
    @background_image = Gosu::Image.from_text self, "Hello world!", Gosu.default_font_name,100
  end

  def update
  end
 #Draw image to the screen 
  def draw
    @background_image.draw(0, 0, 0)
  end
#Use button down to create an exit button, so you dont have to close window
def button_down id
#close is a special method in gosu
    close if id == Gosu::KbEscape
end

#end of template class
end

#more classes go here
Template.new.show