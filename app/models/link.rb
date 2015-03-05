class Link < ActiveRecord::Base
  LIMIT = 10.freeze

  scope :limit_order, -> (u) { where(user_id: u.id).order('created_at desc').limit(Link::LIMIT)}
end
