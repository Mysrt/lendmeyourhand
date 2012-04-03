class Hand < ActiveRecord::Base
  include Paperclip::Glue

  has_attached_file :picture, 
    :styles => {:large => '600x600>', 
                :medium => "300x300>", 
                :thumb => "100x100>" },
    :storage => :s3,
    :s3_credentials => "#{Rails.root}/config/s3.yml",
    :path => ":sytle/:id/:filename.:extension",
    :bucket => 'lendmeyourhand'  


  validates_presence_of :name
  validates_attachment_presence :picture

  attr_accessor :guess
end
