class GalleriesController < ApplicationController

    def index 
        galleries = Gallery.all 
        render json: GalleriesSerializer.new(galleries).serialized_json
    end 

    def show 
        gallery = Gallery.find(params[:id])
        options = {
            include: [:pictures => {:only => :id}]
        }
        render json: gallery.to_json(:include => {
            :pictures => {:only => [:url]}
        })
    end 

    def create 
        gallery = Gallery.create(gallery_params) 
        byebug
        if gallery.save 
            render json: gallery 
        else 
            render json: { error: "There was a problem creating your gallery" } 
        end 
    end 

    def update 
        gallery = Gallery.find(params[:id])
        if gallery 
            gallery.update(gallery_params) 
            render json: gallery 
        else 
            render json: { error: 'There was a problem updating this gallery'}
        end 
    end 

    def destroy 
        gallery = Gallery.find(params[:id]) 
        if gallery 
            gallery.destroy 
            render json: { message: 'Deleted gallery' } 
        else 
            render json: { error: 'There was a problem deleting gallery'}
        end 
    end 

    private 

    def gallery_params 
        params.require(:gallery).permit(:title, :description, :thumbnail)
    end 
end
