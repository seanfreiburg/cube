class Post < ActiveRecord::Base
  belongs_to :user
  attr_accessor :img_blob
  before_create :upload_blob


  def upload_blob

  end



end
