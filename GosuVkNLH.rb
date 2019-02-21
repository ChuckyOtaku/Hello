#call gosu library
require 'gosu'

#creat main window class
class Window < Gosu::Window
  #define options of window class
  def initialize width = 800, height = 600, fullscreen=false
	super#set window to main window
	#title the screen
	#intialize the font used for drawing text
	
	self.caption = "Vociferous King"
	@font = Gosu::Font.new(self, Gosu.default_font_name,32)
  end

  def update
  end
  #draw objects to the screen
  def draw
  @font.draw_text("No Longer Human!", 50,50,0)
  end
end
#call gosu window class
Window.new.show