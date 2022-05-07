class RecordsController < ApplicationController
  def index
    @records = Record.all
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

  private

  def record_params
    params.require(:record).permit(:image, :onset_date, :onset_time, :visit_date, :hospital_name, :diagnosis, :cause, :prescription_drug, :remission_date, :memo,  symptom_id: [], body_part_id: []).merge(user_id: current_user.id)
  end
end