require 'rails_helper'

RSpec.describe Record, type: :model do
  before do
    @record = FactoryBot.build(:record)
  end

  describe '症状記録登録' do
    context '症状記録が登録できる場合' do
      it 'images, onset_date, onset_time, bodypart, symptomが入力されていれば保存できる' do
        expect(@record).to be_valid
      end
    end
    context '症状記録が登録できない場合' do
      it 'imagesが空では登録できない' do
        @record.images = nil
        @record.valid?
        expect(@record.errors.full_messages).to include("画像を入力してください")
      end
      it 'onset_dateが空では登録できない' do
        @record.onset_date = ''
        @record.valid?
        expect(@record.errors.full_messages).to include("発症日を入力してください")
      end
      it 'onset_timeが空では登録できない' do
        @record.onset_time = ''
        @record.valid?
        expect(@record.errors.full_messages).to include("発症した時刻を入力してください")
      end
      it 'bodypartが空では登録できない' do
        @record.bodypart = ''
        @record.valid?
        expect(@record.errors.full_messages).to include("発症した部位を入力してください")
      end
      it 'symptomが空では登録できない' do
        @record.symptom = ''
        @record.valid?
        expect(@record.errors.full_messages).to include("症状を入力してください")
      end
      it 'userが紐づいていないと登録できない' do
        @record.user = nil
        @record.valid?
        expect(@record.errors.full_messages).to include("Userを入力してください")
      end
    end
  end
end
