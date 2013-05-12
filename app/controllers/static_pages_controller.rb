class StaticPagesController < ApplicationController
  skip_before_filter :require_user
  def home
  end

  def help
  end
end
