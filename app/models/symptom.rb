class Genre < ActiveHash::Base
  self.data = [
    { id: 1, name: 'かゆみ' },
    { id: 2, name: '痛み' },
    { id: 3, name: 'ぶつぶつ' },
    { id: 4, name: '赤み' },
    { id: 5, name: 'カサカサ' },
    { id: 6, name: 'にきび' },
    { id: 7, name: 'じんましん' },
    { id: 8, name: 'アトピー' },
    { id: 9, name: 'イボ' },
    { id: 10, name: 'タコ・ウオノメ' }
    { id: 11, name: '腫れ' }
    { id: 12, name: '水ぶくれ' }
    { id: 13, name: '虫刺され' }
    { id: 14, name: '水虫' }
    { id: 15, name: 'やけど' }
    { id: 16, name: '脱毛' }
    { id: 17, name: 'しこり' }
    { id: 18, name: 'あざ' }
    { id: 19, name: 'ほくろ' }
    { id: 20, name: 'その他' }
  ]
  end