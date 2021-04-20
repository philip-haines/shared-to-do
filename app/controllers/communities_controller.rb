class CommunitiesController < ApplicationController

    def index
        @communities = Community.all 
        render json: @communities, include: [:tasks]
    end

    def show
        @community = Community.find(params[:id])
        render json: @community, include: [:tasks]
    end

    def create
        @new_community = Community.create(
            name: params[:name]
        )

        render json: @new_community
    end

    def update
        @updated_community = Community.find(params[:id])
        @updated_community.update(name: params[:name])
        render json: @updated_community
    end

    def destroy
        @community = Community.find(params[:id])
        @community.delete
    end

end
