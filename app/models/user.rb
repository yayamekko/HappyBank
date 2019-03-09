class User < ApplicationRecord
    validates :password_digest,
      presence: true,
      length:  { minimum: 4,
                too_short: "は4桁以上ご入力ください。",
                maximum: 10,
                too_long: "は10桁以下でご入力ください。" 
                },
      is_disable_char: true
      validate :is_eazy_password
end

def is_eazy_password

  #パスワードが全て同じ文字
  if /^#{self.password_digest[0, 1]}+$/ =~ self.password_digest
    #エラーメッセージを設定
    errors[:base] << "パスワードは異なる文字を組み合わせて設定してください。"
  end
end
