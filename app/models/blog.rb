class Blog < ApplicationRecord

  #enum est une liste de valeurs pour un attribut
  enum status: {draft: 0, published: 1}

  #FriendlyId est une gem permettant de creer un slug pour afficher au lieu d'un id
  extend FriendlyId
  friendly_id :title, use: :slugged

  # on ne veut pas pouvoir créer/éditer de blg sans titre ou contenu
  validates_presence_of :title, :body

  #ajout de la reference au topic
  # belongs_to indique qu'il y a un topic pour spécifier le blog
  belongs_to :topic

end
