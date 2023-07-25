class LikeCountController < ApplicationController
    def create    
        @like = Like.new(:article_id => params[:article_to_be_liked])
        if @like.save
          respond_to do |format|
            format.html {redirect_to :back, notice: "Liked!"}
            format.js
          end
        end
      end
end
