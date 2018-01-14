class Portfolio < ApplicationRecord

  validates_presence_of :title, :body, :main_image, :thumb_image

  #on peut définir une methode pour selectionner des portfolios
  # selon un subtitle
  def self.angular
    where(subtitle: 'Angular')
  end
  #dans le controleur on peut desormais faire Portfolio.angular
  #

  #une autre façon de faire est de faire un scope
  #  l'appel dans le controleur sera identique
  scope :ruby_on_rails_item, ->{where(subtitle: 'Ruby on rails')}

  #on peut affecter des valeurs par defaut après un save d'un portfolio
  # new par exemple
  after_initialize :set_defaults

  def set_defaults
    self.main_image ||= "http://via.placeholder.com/600x400"
    self.thumb_image ||= "http://via.placeholder.com/350x200"
  end

end
