class CountersController < ApplicationController
    
    def new
    end

    def show
        @counter = Counter.find(params[:id])
    end

    def create 
        @counter = Counter.new(counter_params)
        @counter.paragraph = params[:counter][:paragraph]
        p = @counter.paragraph
        # render json: {"message": paragraph}.to_json
        wordCount = p.split(' ').length
        
        # render json: {"message": paragraph}.to_json
        # @charCount = paragraph.gsub!(/\s+/, "").length
        @counter.charcount = p.gsub!(/\s+/, "").length
        @counter.wordcount = wordCount
        if @counter.save
        redirect_to @counter, notice: 'Counter was successfully created'  
        else 
        render json: {"message": "not saved"}.to_json
        end
    end

 private
    def counter_params
        params.require(:counter).permit(:paragraph, :charcount, :wordcount)
    end

end
