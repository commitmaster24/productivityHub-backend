class User < ApplicationRecord
	has_many :task_masters, dependent: :destroy
	has_many :note_genius, dependent: :destroy

	validates :email, presence: true, format: { with: /\A[^@\s]+@[^@\s]+\z/ }
end
