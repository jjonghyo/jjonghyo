class Product < ActiveRecord::Base
  validates :title, :description, :image_url, :presence => true
  validates :description, :length => { :maximum => 1000, 
						  :message => 'koli4stvo simvolov ne dolzno privishat 1000'}
  validates :author, :length => { :maximum => 100, :minimum =>1,
						  :message => 'pole obiazatelno k zapolneniyu i koli4stvo simvolov ne dolzno privishat 100'}
  validates :publisher, :format => {
  :with => /pub[1-7]/,
  :message => 'publisher dolzhen bit pub1 - pub7 '
  }
  validates :price, :numericality => {:greater_than_or_equal_to => 0.01}
  validates :title, :uniqueness => true
  validates :image_url, :format => {
  :with => %r{\.(gif|jpg|png)$}i,
  :message => 'kartinka dolzna imet format  GIF, JPG ili PNG '
}
end