class RecordsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit, :destroy]
  before_action :set_record, only: [:show, :edit, :update, :destroy]

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
    @comment = Comment.new
    @comments = @record.comments.includes(:user)
  end

  def edit
    redirect_to root_path if current_user.id != @record.user_id
  end

  def update
    if @record.update(record_params)
      redirect_to record_path(@record.id)
    else
      render :edit
    end
  end

  def destroy
    if current_user.id == @record.user_id
      @record.destroy
      redirect_to root_path
    end
  end

  def search
    @records = Record.search(params[:keyword])
  end

  private

  def record_params
    params.require(:record).permit(:onset_date, :onset_time, :bodypart_id, :symptom_id, :visit_date, :hospital_name, :diagnosis,
                                   :cause, :prescription_drug, :remission_date, :memo, { images: [] }).merge(user_id: current_user.id)
  end

  def set_record
    @record = Record.find(params[:id])
  end
end
