class MP3Importer
  attr_reader :path

  def initialize(path)
    @path = path
  end

  def files
    Dir.entries(path).select do |filename|
      filename.end_with?('mp3')
    end
  end

  def import
    files.each do |file|
      Song.new_by_filename(file)
    end
  end
end
