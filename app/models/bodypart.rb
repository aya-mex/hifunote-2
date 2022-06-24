class Genre < ActiveHash::Base
  self.data = [
    { id: 1, name: '顔' },
    { id: 2, name: '頭' },
    { id: 3, name: '耳' },
    { id: 4, name: '胸' },
    { id: 5, name: '腹部' },
    { id: 6, name: '背中' },
    { id: 7, name: '腕' },
    { id: 8, name: '手' },
    { id: 9, name: '足' },
    { id: 10, name: '上肢' },
    { id: 11, name: '下肢' },
    { id: 12, name: '脇' },
    { id: 13, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :records

  end