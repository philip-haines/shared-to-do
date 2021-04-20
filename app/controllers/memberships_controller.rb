class MembershipsController < ApplicationController
    def index
        @members = Membership.all 
        render json: @members, include: [:user, :community]
    end

    def show
        @membership = Membership.find(params[:id])
        render json: @membership,  include: [:user, :community]
    end

    def create
        @new_membership= Membership.create(
            user_id: params[:user_id], 
            community_id: params[:community_id]
        )

        render json: @new_membership
    end

    def destroy
        @membership = Membership.find(params[:id])
        @membership.delete
    end

end
