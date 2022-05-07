require 'rails_helper'

RSpec.describe Record, type: :model do
  before do
    @record = FactoryBot.build(:record)
  end

  describe '症状記録登録' do
    context '症状記録が登録できる場合' do
      it 'image, onset_date, onset_time, bodypart, symptomが入力されていれば保存できる' do
        expect(@record).to be_valid
      end
    end
    context '症状記録が登録できない場合' do
      it 'imageが空では登録できない' do
        @record.image = nil
        @record.valid?
        expect(@record.errors.full_messages).to include("Image can't be blank")
      end
      it 'onset_dateが空では登録できない' do
        @record.onset_date = ""
        @record.valid?
        expect(@record.errors.full_messages).to include("Onset date can't be blank")
      end
      it 'onset_timeが空では登録できない' do
        @record.onset_time = ""
        @record.valid?
        expect(@record.errors.full_messages).to include("Onset time can't be blank")
      end
      it 'bodypartが空では登録できない' do
        @record.bodypart = ""
        @record.valid?
        expect(@record.errors.full_messages).to include("Bodypart can't be blank")
      end
      it 'symptomが空では登録できない' do
        @record.symptom = ""
        @record.valid?
        expect(@record.errors.full_messages).to include("Symptom can't be blank")
      end
      it 'userが紐づいていないと登録できない' do
        @record.user = nil
        @record.valid?
        expect(@record.errors.full_messages).to include("User must exist")
      end
    end
  end
end
