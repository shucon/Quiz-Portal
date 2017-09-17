class Question < ApplicationRecord
before_save { self.genre = genre.upcase }
before_save { self.subgenre = subgenre.upcase }
validates :question, presence: true
validates :option1, presence: true
validates :option2, presence: true
validates :option3, presence: true
validates :option4, presence: true
validates :genre, presence: true
validates :subgenre, presence: true

end
