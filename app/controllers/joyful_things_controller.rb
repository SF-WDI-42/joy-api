class JoyfulThingsController < ApplicationController
  before_action :set_joyful_thing, only: [:show, :update, :destroy]

  # GET /joyful_things
  def index
    @joyful_things = JoyfulThing.all

    render json: @joyful_things
  end

  # GET /joyful_things/1
  def show
    render json: @joyful_thing
  end

  # POST /joyful_things
  def create
    @joyful_thing = JoyfulThing.new(joyful_thing_params)

    if @joyful_thing.save
      render json: @joyful_thing, status: :created, location: @joyful_thing
    else
      render json: @joyful_thing.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /joyful_things/1
  def update
    if @joyful_thing.update(joyful_thing_params)
      render json: @joyful_thing
    else
      render json: @joyful_thing.errors, status: :unprocessable_entity
    end
  end

  # DELETE /joyful_things/1
  def destroy
    @joyful_thing.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_joyful_thing
      @joyful_thing = JoyfulThing.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def joyful_thing_params
      params.require(:joyful_thing).permit(:name)
    end
end
