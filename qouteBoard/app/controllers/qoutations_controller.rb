# frozen_string_literal: true

class QoutationsController < ApplicationController
  # before_action :set_qoutation, only: %i[show edit update destroy]
  before_action :authenticate_user!, except: %i[index show]
  before_action :set_qoutation, only: %i[show edit update destroy]

  # GET /qoutations or /qoutations.json
  def index
    @qoutations = Qoutation.all
  end

  # GET /qoutations/1 or /qoutations/1.json
  def show; end

  # GET /qoutations/new
  def new
    @qoutation = Qoutation.new
  end

  # GET /qoutations/1/edit
  def edit; end

  # POST /qoutations or /qoutations.json
  def create
    @qoutation = Qoutation.new(qoutation_params)
    @qoutation.user = current_user
    respond_to do |format|
      if @qoutation.save
        format.html { redirect_to @qoutation, notice: 'Qoutation was successfully created.' }
        format.json { render :show, status: :created, location: @qoutation }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @qoutation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /qoutations/1 or /qoutations/1.json
  def update
    respond_to do |format|
      if @qoutation.update(qoutation_params)
        format.html { redirect_to @qoutation, notice: 'Qoutation was successfully updated.' }
        format.json { render :show, status: :ok, location: @qoutation }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @qoutation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /qoutations/1 or /qoutations/1.json
  def destroy
    @qoutation.destroy
    respond_to do |format|
      format.html { redirect_to qoutations_url, notice: 'Qoutation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_qoutation
    @qoutation = Qoutation.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def qoutation_params
    params.require(:qoutation).permit(:quote)
  end
end
