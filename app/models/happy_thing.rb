class HappyThing < ApplicationRecord
  validates :happy_things,
    presence: true,
    is_disable_char: true
    # validates :user_id, presence: true

end
