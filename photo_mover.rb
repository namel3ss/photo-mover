require 'byebug'
require 'date'
require 'fileutils'
require 'ruby-progressbar'

class PhotoMover
  def initialize(destination_root, source_path)
    @destination_root = destination_root
    @source_dir = Dir[source_path + "/*"]
  end

  def move
    bar = ProgressBar.create(format: '%a %f %P% Processed: %c from %C',
                             total: @source_dir.size)
    @source_dir.each do |file|
      FileUtils.mkdir_p(dir(file))
      FileUtils.move(file, file_path(file))
      bar.increment
    end
  end

  private

  def dir(file)
    date = Date.parse(File::mtime(file).to_s)
    @destination_root + "/#{date.year}/#{format_month(date.month)}/#{format_day(date.day)}"
  end

  def file_path(file)
    dir(file) + '/' + File.basename(file)
  end

  def format_month(month)
    month.to_s.rjust(2, '0')
  end

  def format_day(day)
    day.to_s.rjust(2, '0')
  end
end

