class Panorama < ActiveRecord::Base
  belongs_to :user
  has_attached_file :image, :styles => { :thumb => "200x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  after_image_post_process :read_exif

  def read_exif
    exif = EXIFR::JPEG.new(image.queued_for_write[:original].path)
    return if exif.nil? || !exif.exif?
    if !exif.exif.gps_img_direction.blank?
      self.center = exif.exif.gps_img_direction.to_f
    else 
      xmp = XmpFixed.parse(exif)
      self.center = xmp.GPano.PoseHeadingDegrees.to_f if !xmp.nil? && !xmp.GPano.blank?
    end
      
    self.lat = exif.exif.gps_latitude.to_f if !exif.exif.gps_latitude.blank?
    self.lon = exif.exif.gps_longitude.to_f if !exif.exif.gps_longitude.blank?
  end

  def bearing(p)
	  lat1 = lat.to_rad;
		lon1 = lon.to_rad;
		lat2 = p.lat.to_rad;
		lon2 = p.lon.to_rad;

		dLon = lon2 - lon1;
		y = Math.sin(dLon) * Math.cos(lat2);
		x = Math.cos(lat1) * Math.sin(lat2) - Math.sin(lat1) * Math.cos(lat2) * Math.cos(dLon);
		bear = ((Math.atan2(y, x).to_deg)+360) % 360;
		return bear;
  end
end
