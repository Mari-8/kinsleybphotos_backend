class PicturesController < ApplicationController

    def index 
        pictures = Picture.all 
        render json: pictures
    end 

    def show 
        picture = Picture.find(params[:id])
        render json: picture 
    end 

    def create 
        byebug
        picture = Picture.create(src: params[:src], thumbnail: params[:thumbnail], gallery_id: params[:gallery_id])
        byebug
        if picture.save 
            render json: picture 
        else 
            render json: { error: "There was a problem creating this picture" }
        end 
    end 

    def update 
        picture = Picture.find(params[:id]) 
        if picture 
            picture.update(picture_params)
            render json: picture 
        else 
            render json: { error: "There was a problem updating this picture" } 
        end 
    end 

    def destroy 
        picture = Picture.find(params[:id])
        if picture 
            picture.destroy
            render json: { message: "Deleted picture" } 
        else 
            render json: { error: "There was a problem deleting picture" }
        end 

        private 

        def picture_params
            params.permit(:file, :gallery_id, :src, :thumbnail)
        end 
    end 
end
