class Hand < ActiveRecord::Base
  include Paperclip::Glue
  has_attached_file :picture, :styles => {:large => '600x600>', :medium => "300x300>", :thumb => "100x100>" }

  attr_accessor :guess
end
