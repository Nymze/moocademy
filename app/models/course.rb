class Course < ApplicationRecord

	  has_many :lessons, dependent: :destroy #le cours à plusieurs leçons liées au cours

  validates :titre, presence: true, #il doit y avoir un titre pour entre le cours
                    length: { maximum: 140 },# pas plus de 140 characters
                    uniqueness: {:message => "Title already exists."} #le titre doit etre unique

  validates :description, presence: true #doit avoir une description

end
