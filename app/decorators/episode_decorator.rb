# frozen_string_literal: true

class EpisodeDecorator < Draper::Decorator
  delegate_all

  def short_description
    object.description.truncate(100)
  end
end
