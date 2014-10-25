class Post < ActiveRecord::Base
  belongs_to :user
  attr_accessor :img_blob
  before_create :upload_blob


  def upload_blob
    content = self.img_blob.read
    self.img_name = SecureRandom.hex + "." + self.img_blob.original_filename.split('.').last
    azure_blob_service = Azure::BlobService.new
    result = azure_blob_service.create_block_blob(AZURE_PICTURE_CONTAINER_NAME, self.img_name, content)
    raise "Upload Failed" if result.nil?
  end



end
