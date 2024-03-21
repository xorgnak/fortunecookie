# frozen_string_literal: true

require_relative "fortunecookie/version"

module Fortunecookie
  class Error < StandardError; end
  def self.fortune
    `fortune /usr/share/games/fortunes/fortunes`.gsub(/\s/," ").gsub(/\s+/," ").split(". ")
  end
  def fortune
    Fortunecookie.fortune
  end
end
