class Link < ActiveRecord::Base
  LIMIT = 14.freeze

  validate :validate_url

  scope :limit_order, -> (u) { where(user_id: u.id).order('created_at desc').limit(Link::LIMIT)}

  def short_date
    created_at.to_s(:short)
  end

  def short_url
    uri = URI.parse(url)
    uri.path.gsub('/', '').blank? ? uri.host : uri.path.truncate(50)
  end

  private

  def validate_url
    begin
      URI.parse(url)
    rescue URI::InvalidURIError
      errors.add(:base, 'The format of the url is not valid.')
    end
  end
end
