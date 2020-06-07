class PlayersController < ApplicationController
    before_action only: [:index, :show]
    
    def index
        @players = Player.all 
        render json: @players
    end 

    def show
        find_player
        render json: @player
    end 

    def create
        @player = Player.create(player_params)
        render json: @player
    end


    def update 
        @player.update(player_params)
        if @player.save
          render json: @player
        else
          render json: { errors: @player.errors.full_messages }
        end
    end 

    def destroy
        player = Plyaer.find_by(id: params[:id])
        player.destroy
        render json: player
    end


    private

    def player_params
        params.permit(:name, :ppg, :rpg, :apg, :description)
    end

    def find_player
        @player = Player.find(params[:id])
    end


end
