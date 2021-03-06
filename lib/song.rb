require 'pry'

class Song
  extend Memorable::ClassModules
  include Memorable::InstanceModules
  extend Findable
  include Paramable
  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def artist=(artist)
    @artist = artist
  end

  def self.all
    @@songs
  end
end
