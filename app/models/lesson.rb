class Lesson < ApplicationRecord
	 belongs_to :course # la leçon appartient à un cours 

  validates :titre, presence: true, # un titre est exigé 
                    length: { maximum: 140}, # pas plus de 140 characteres
                    uniqueness: {:message => "Title already exists."} #le titre doit etre unique


  validates :description, presence: true # description exigée

  validates :course_id, presence: true, # l'id du cours est requis
                        only_integer: true # et ne prends que les integers
end
