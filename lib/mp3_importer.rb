require 'spec_helper'
require 'pry'

class MP3Importer
    attr_accessor :path

    def initialize(filepath)
        @path = filepath
    end

    def files
        filenames = Dir.chdir(@path) do | path |
            Dir.glob("*.mp3")
        end   
        filenames
    end

    def import
        self.files.each do |file|
            song = Song.new_by_filename(file)
        end
    end







end