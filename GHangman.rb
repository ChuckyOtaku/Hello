#Copyright (c) 2019 ChuckyOtaku.

require "gosu"

#Main window class called from Gosu
class Hangman < Gosu::Window
  def initialize width=900, height=500, fullscreen=false
    super
#Text displayed at the top of the window
    self.caption = "Hangman!"
 #call methods from gosu
    @background_image = Gosu::Image.from_text "Welcome To Hangman!",50, font: Gosu.default_font_name, bold: true #bold: {true => Gosu::Image}#how to hash
    @font  = Gosu::Font.new( self, Gosu.default_font_name, 24)
    self.text_input = Gosu::TextInput.new 
  end
    
#  def button_down id 
#  close if id == Gosu::KbEscape
#  end
   
  def update 
  end
  
  
 #Outputs to the screen
  def draw            
    @background_image.draw(150, 0, 0)
    @font.draw_text("Hello and Welcome to Hangman in ruby",100,50,0,scale_x =1.5, scale_y = 1, color = 0xff_ffffff)
    #handle input
    @font.draw_text("Select difculty by pressing 1, 2 or 3: #{text_input.text}",20,70,0,scale_x =1, scale_y = 1, color = 0xff_ffffff)
# set difficulty 
    if text_input.text == "1" then
      difficulty = 'Easy' end
    if text_input.text == "2" then
      difficulty = 'Medium'end   
    if text_input.text == "3" then
      difficulty = 'Hard'end
    

   #Display Difficulty
   @font.draw_text("Difficulty set to : #{difficulty}",20,90,0)
   @font.draw_text("Loading...",20,150,0)
# Pick wordlist acckrd
    case
      when difficulty == "Easy" then wordlist = [a ="yo",b = "hello"]
      
    end

    gameword = wordlist
   @font.draw_text("#{wordlist}",40,180,0 )
   @font.draw_text("#{gameword.to_i[1]}",40,200,0 )
  end
  

end
Hangman.new.show
