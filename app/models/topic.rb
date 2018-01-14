class Topic < ApplicationRecord

  validates_presence_of :title

  #ajout de la références aux blogs
  # has_many indique d'un même topic peut etre associé à plusieurs blogs
  has_many :blogs

end
