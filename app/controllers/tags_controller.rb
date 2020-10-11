class TagsController < ApplicationController
  before_action :require_login, only: [:destroy]
    def show
      @tag = Tag.find(params[:id])
    end

    def index
      @tags = Tag.all
    end

    def show
        @tag = Tag.find_by(id: params[:id])
    end

    def destroy
        tag = Tag.find_by(id: params[:id])
        tag.destroy
        redirect_to tags_url
    end
end
