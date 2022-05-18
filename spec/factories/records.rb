FactoryBot.define do
  factory :record do
    onset_date        { Faker::Date.between(from: 3.years.ago, to: Date.today) }
    onset_time        { Faker::Number.between(from: 0, to: 23) }
    symptom           { 'かゆみ' }
    bodypart          { '顔' }
    visit_date        { Faker::Date.between(from: 3.years.ago, to: Date.today) }
    hospital_name     { 'ABCクリニック' }
    diagnosis         { 'じんましん' }
    cause             { '不明' }
    prescription_drug { '抗アレルギー薬' }
    remission_date    { Faker::Date.between(from: 3.years.ago, to: Date.today) }
    memo              { Faker::Lorem.sentences }
    association :user

    after(:build) do |record|
      record.images.attach(io: File.open('public/images/test_image.jpg'), filename: 'test_image.jpg')
    end
  end
end
