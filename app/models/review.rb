class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, :rating, presence: true
  validates :rating, inclusion: { in: (0..5) }
  validates :rating, numericality: { only_integer: true }
end

# Un avis doit appartenir à un restaurant.
# Un avis doit avoir un contenu.
# Un avis doit avoir une note.
# La note d’un avis doit être un nombre entre 0 et 5.
# La note d’un avis doit être un entier. Par exemple, un avis avec une note de 2,5 doit être invalide !
