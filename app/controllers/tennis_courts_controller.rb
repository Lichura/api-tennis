class TennisCourtsController < ApplicationController

	before_action :set_tennisCourt, only: [:show, :update, :destroy]

  # GET /todos
  def index
    @tennisCourts = TennisCourt.all
    json_response(@tennisCourts)
  end

  # POST /todos
  def create
    @tennisCourt = TennisCourt.create!(tennisCourt_params)
    json_response(@tennisCourt, :created)
  end

  # GET /todos/:id
  def show
    json_response(@tennisCourt)
  end

  # PUT /todos/:id
  def update
    @tennisCourt.update(tennisCourt_params)
    head :no_content
  end

  # DELETE /todos/:id
  def destroy
    @tennisCourt.destroy
    head :no_content
  end

  private

  def tennisCourt_params
    # whitelist params
    params.permit(:nombre, :ubicacion, :descripcion)
  end

  def set_tennisCourt
    @tennisCourt = TennisCourt.find(params[:id])
  end


end
