class Lesson < ApplicationRecord
	 belongs_to :course

  validates :titre, presence: true,
                    length: { maximum: 255 },
                    unique: true

  validates :description, presence: true

  validates :course_id, presence: true,
                        only_integer: true
end
