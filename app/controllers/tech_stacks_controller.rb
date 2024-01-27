class TechStacksController < ApplicationController
  before_action :set_tech_stack, only: %i[ show update destroy ]

  # GET /tech_stacks
  def index
    @tech_stacks = TechStack.all

    render json: @tech_stacks
  end

  # GET /tech_stacks/1
  def show
    render json: @tech_stack
  end

  # POST /tech_stacks
  def create
    @tech_stack = TechStack.new(tech_stack_params)

    if @tech_stack.save
      render json: @tech_stack, status: :created, location: @tech_stack
    else
      render json: @tech_stack.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tech_stacks/1
  def update
    if @tech_stack.update(tech_stack_params)
      render json: @tech_stack
    else
      render json: @tech_stack.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tech_stacks/1
  def destroy
    @tech_stack.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tech_stack
      @tech_stack = TechStack.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tech_stack_params
      params.fetch(:tech_stack, {})
    end
end
