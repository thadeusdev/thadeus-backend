class AboutMesController < ApplicationController
  before_action :set_about_me, only: %i[ show update destroy ]

  # GET /about_mes
  def index
    @about_mes = AboutMe.all

    render json: @about_mes
  end

  # GET /about_mes/1
  def show
    render json: @about_me
  end

  # POST /about_mes
  def create
    @about_me = AboutMe.new(about_me_params)

    if @about_me.save
      render json: @about_me, status: :created, location: @about_me
    else
      render json: @about_me.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /about_mes/1
  def update
    if @about_me.update(about_me_params)
      render json: @about_me
    else
      render json: @about_me.errors, status: :unprocessable_entity
    end
  end

  # DELETE /about_mes/1
  def destroy
    @about_me.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_about_me
      @about_me = AboutMe.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def about_me_params
      params.fetch(:about_me, {})
    end
end
