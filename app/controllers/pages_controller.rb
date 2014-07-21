class PagesController < ApplicationController

  def index
    @next_wednesday = Time.now.wday == 3 ? Chronic.parse("today").strftime("%B %d") : Chronic.parse("this Wednesday").strftime("%B %d")
    @challenge = Challenge.find_by(:current => true)
    @chat = Chat.order("date DESC").first
  end

  def beta
  end

end
