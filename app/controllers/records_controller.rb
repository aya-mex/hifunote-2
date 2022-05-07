class RecordsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit, :destroy]
  
  def index
    @records = Record.includes(:user).order('created_at DESC')
  end

  def new
    @record = Record.new
  end

  def create
    @record = Record.new(record_params)
    if @record.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @record = Record.find(params[:id])
  end

  def edit
    @record = Record.find(params[:id])
    redirect_to root_path if current_user.id != @record.user_id
  end

  def update
    @record = Record.find(params[:id])
    if @record.update(record_params)
      redirect_to record_path(@record.id)
    else
      render :edit
    end
  end


  private

  def record_params
    params.require(:record).permit(:image, :onset_date, :onset_time, :bodypart, :symptom, :visit_date, :hospital_name, :diagnosis, :cause, :prescription_drug, :remission_date, :memo).merge(user_id: current_user.id)
  end
end
