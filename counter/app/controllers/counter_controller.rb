class CounterController < ApplicationController
  
  def index
  end

  def poster
    paragraph = params[:text]
    @wordCount = paragraph.split(' ').length
    @charCount = paragraph.gsub!(/\s+/, "").length
    render('index')
  end
  
end
