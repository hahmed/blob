class User < ApplicationRecord
  has_one_attached :avatar, dependent: :purge_later do |attachable|
    attachable.variant :preview, resize_to_fill: [200, 200], preprocessed: true
  end
end
