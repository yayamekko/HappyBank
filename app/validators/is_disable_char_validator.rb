class IsDisableCharValidator < ActiveModel::EachValidator

  def validate_each(record, attribute, value)
    #初期値の設定
    result = true
    
    #入力不可文字の存在チェック
    if /[\\.\/@"&\'{}<>=]/ =~ value
      record.errors[:base] << ("「\\.\/@\"&\'{}<>=」を入力しないでください")
    end
    
    return result
  end
end