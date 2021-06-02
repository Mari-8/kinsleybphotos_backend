class PhotoshootsController < ApplicationController

    def index 
        photoshoots = Photoshoot.all
        
        render json: PhotoshootSerializer.new(photoshoots).serialized_json
    end 

    def show 
        photoshoot = Photoshoot.find(params[:id])
        render json: photoshoot 
    end 

    def create 
        photoshoot = Photoshoot.new(photoshoot_params) 
        if photoshoot.save 
            render json: photoshoot 
        else 
            render json: { error: "There was a problem creating this photoshoot" }
        end 
    end 

    def update 
        photoshoot = Photoshoot.find(params[:id])
        if photoshoot 
            photoshoot.update(photoshoot_params)
            render json: photoshoot 
        else 
            render json: { error: 'There was a problem updating this photoshoot' } 
        end 
    end 

    def destroy 
        photoshoot = Photoshoot.find(params[:id]) 
        if photoshoot 
            photoshoot.destroy 
            render json: { message: 'Deleted photoshoot'}
        else 
            render json: { error: 'There was a problem deleting photoshoot' }
        end 
    end 

    private 

    def photoshoot_params 
        params.permit(:date, :time, :name, :email, :cell, :type, :locations, :outfits, :specifics)
    end 
end
