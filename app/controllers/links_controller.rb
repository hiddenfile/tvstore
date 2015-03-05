class LinksController < ApplicationController
  before_filter :authenticate_user!

  def index
    @links = Link.limit_order(current_user)
  end

  def create
    Link.create! do |l|
      l.user_id = current_user.id
      l.url = params[:url]
    end

    links_id = Link.limit_order(current_user).ids
    Link.where.not(id: links_id).delete_all

    redirect_to :back
  end
end
