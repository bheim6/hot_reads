class LinksController < ApplicationController
  def index

  end

  def create
    link = Link.find_or_create_by(link_params)
      link.read_count += 1
      link.save
  end

  private
    def link_params
      params.permit(:title, :url)
    end
end
