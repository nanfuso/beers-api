class Api::V2::BeersController < ApplicationController
    def index
        @beers = Beer.all
    end

    def create
        @beer = Beer.new(
                            name: params[:name],
                            style: params[:style],
                            yeast: params[:yeast],
                            ibu: params[:ibu]
                            )
        if @beer.save
            render 'show.json.jbuilder'
        else
            render json: { errors: @beer.errors.full_messages }, status: 422
        end
    end

    def show
        @beer = Beer.find(params[:id])
    end

    def update
        beer = Beer.find(params[:id])
        beer.assign_attributes(
                                name: params[:name],
                                style: params[:style],
                                yeast: params[:yeast],
                                malts: params[:malts],
                                ibu: params[:ibu]
                            )
        beer.save

        render :show

    end

    def destroy
        @beer = Beer.find(params[:id])
        @beer.destroy
        render json: {message: 'Employee Destroyed'}, status: 422
    end

end
