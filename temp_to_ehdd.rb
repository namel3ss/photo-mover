require_relative 'mover'

destination_root = '/Volumes/Photos/Photos'
source_dir = '/Users/enrai/Pictures/temp'

PhotoMover.new(destination_root, source_dir).move
