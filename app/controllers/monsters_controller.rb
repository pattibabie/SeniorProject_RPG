class MonstersController < ApplicationController
  def new
    @monsters = Monster.new
  end

  def index
    @monsters = Monster.all # instance variables are prefixed with an @. If we said monsters = Monster.all, we wouldn't be able to access monsters in the template
  end
end
