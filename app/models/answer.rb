class Answer < ApplicationRecord
  belongs_to :article
  validates :answer, presence: true, length: { minimum: 5 }
end
