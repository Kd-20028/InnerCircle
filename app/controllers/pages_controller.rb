class PagesController < ApplicationController
  def home
    @user = current_user
    @group = Group.new()
    @group_options = @user.groups.all.map{|u| [u.name, u.id]}
    @post = Post.new()
  end
end
