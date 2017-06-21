class BeersController < ApplicationController
    def index
        @beers = Beer.all
    end

    def create
        # @beer = Beer.new(
        #                 name: params[:name],
        #                 style: params[:style],
        #                 yeast: params[:yeast],
        #                 ibu: params[:ibu]
        #                 )
        # @beer.save
    end
end
