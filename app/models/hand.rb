class Hand < ActiveRecord::Base
  include Paperclip::Glue

  has_attached_file :picture, :styles => {:large => '600x600>', :medium => "300x300>", :thumb => "100x100>" }

  validates_presence_of :name
  validates_attachment_presence :picture

  attr_accessor :guess
end
