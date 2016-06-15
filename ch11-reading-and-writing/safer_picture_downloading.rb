# move to folder where picture will be saved
Dir.chdir '/Users/Dan/Projects/Test Folder/Saved Photos'
#find photos to be moved
photo_names = Dir['/Users/Dan/Projects/Test Folder/Photos to Move/**/*.{jpg,JPG}']
#request name for this batch
puts 'What would you like to call this batch?'
batch_name = gets.chomp
#say how many files will be downloaded
puts
print "Downloading #{photo_names.length} files: "
#create counter to number photos
photo_number = 1

photo_names.each do |name|
#"progress bar" will display a '.' for each file it is processing
  print '.'

  new_name = if photo_number > 100
              "#{batch_name}#{photo_number}.jpg"
            elsif photo_number > 10
              "#{batch_name}0#{photo_number}.jpg"
            else
              "#{batch_name}00#{photo_number}.jpg"
            end
  #check if file name already exists
  if File.exist?(new_name)
    #if name already exists, warn user and quit
    puts 'file name already exists! Please try again with a new batch name.'
    exit
  else
#if name doesn't already exist, move and rename file ("name" has the full path name for where the file was--
#orignially saved whereas "new_name" doesn't have a path, so the file is saved in the current working directory)
  File.rename name, new_name
  end
#increase the counter
  photo_number = photo_number + 1
end

puts
puts 'Finished moving photos.'
