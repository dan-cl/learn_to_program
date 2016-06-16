def shuffle arr #create a shuffle method.
  $shuffledtracklist = [] #create an array to store the shuffled tracks, this is a global array so it can be accessed--
  #--outside the method later when writing the tracklist to a file.
  trackcount = 0 #to keep track of how many tracks have been shuffled.
  allreadyshuffled = [] #to keep track of what tracks have been shuffled, so that the same track doesn't get added--
  #--to the shuffledtracklist array twice.
  while trackcount < arr.length #stops the method once all tracks have been added to the shuffledtracklist array.
    randnum = rand(arr.length) #picks a random number within the range of the total number of tracks.
    if randnum != trackcount && !(allreadyshuffled.include? randnum) #checks if the random number matches the position--
      #of the current track or if it has already been used.
      $shuffledtracklist.push arr[randnum] #if both of the above aren't true then the track gets copied into the--
      #shuffledtracklist array.
      trackcount = trackcount + 1 #keep track of the number of tracks already shuffled.
      allreadyshuffled.push randnum #keep track of what tracks have already been shuffled.
    else
    end

  end
  
end

filename = 'Play_List.m3u' #create filename variable (*.m3u is a playlist extension).

tracklist = Dir["/**/*.mp3"] #create tracklist array and populate with the search reasults from searching the--
#entire hard disk for mp3 files.

shuffle tracklist #run the shuffle method on the tracklist array.

File.open filename, 'w' do |f| #open (and create) a file, name it Play_List.m3u,  request write access to it ('w')--
  #and call it oject 'f'.
  f.puts $shuffledtracklist #write the contents of the shuffledtracklist array to the file, with each item in the array--
  #on a new line.

end
