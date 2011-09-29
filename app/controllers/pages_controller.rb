class PagesController < ApplicationController
  
  def tools
    render 'tools.html.erb', :layout => false
  end
end
