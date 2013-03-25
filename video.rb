class Video < ActiveRecord::Base
  attr_accessible :name
  attr_accessible :vi
  
  has_attached_file :vi, :whiny => false,
    #:url => "/uploads/videos/:id/:style/:basename.:extension",
    #:path => ":rails_root/uploads/videos/:id_partition/:style/:basename.:extension",   
    :styles => { 
    :medium => { :geometry => "640x480", :format => 'flv' },
    :thumb => { :geometry => "100x100#", :format => 'jpg', :time => 10 }
   }# ,   :processors => [:ffmpeg]
  
  validates_attachment_presence :vi
end
