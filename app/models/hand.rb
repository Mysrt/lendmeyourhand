class Hand < ActiveRecord::Base
  include Paperclip::Glue

  has_attached_file :picture, 
    :styles => {:large => '600x600>', 
                :medium => "300x300>", 
                :thumb => "100x100>" },
    :storage => :s3,
    :s3_credentials => {:access_key_id     => ENV['S3_KEY'],
                        :secret_access_key => ENV['S3_SECRET']},
    :path => ":sytle/:id/:filename.:extension",
    :bucket => 'lendmeyourhand'  


  validates_presence_of :name
  validates_attachment_presence :picture
  #validates_attachment_size :picture, :less_than => 2.megabyte

  attr_accessor :guess
end
