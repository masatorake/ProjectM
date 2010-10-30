class Post < ActiveRecord::Base
  has_many :comments

  validates :title,:presence=> true, :length=>{:maximum=>20}

  scope :title_or_body_matches, lambda {|q| where 'title like :q or body like :q', :q => "%#{q}%"}

end
