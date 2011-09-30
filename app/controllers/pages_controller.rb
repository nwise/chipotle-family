class PagesController < ApplicationController
  
  def tools
    if request.post?
      
      string = params[:string][:string]
      letters = %W{a b c d e f g h i j k l m n o p q r s t u v w x y z} 
      reversed_letters = letters.reverse
      @new_string = ""
      string.each_char do |c|
        index = letters.index(c.downcase)
        if index
          @new_string << reversed_letters[index]
        else
          @new_string << c.downcase
        end
      end
    end
    render 'tools.html.erb', :layout => false
  end
end
