def music_shuffle arr #create a shuffle method.
  $shuffledtracklist = [] #create an array to store the shuffled tracks, this is a global array so it can be accessed--
  #--outside the method later when writing the tracklist to a file.
  trackcount = 0 #to keep track of how many tracks have been shuffled.
  allreadyshuffled = [] #to keep track of what tracks have been shuffled, so that the same track doesn't get added--
  #--to the shuffledtracklist array twice.
  attempt = 0 #create or reset attempt counter, used to keep track of how attepts when the same artist or album follows--
  #--the previous tracklisting.
  while trackcount < arr.length #stops the method once all tracks have been added to the shuffledtracklist array.
    randnum = rand(arr.length) #picks a random number within the range of the total number of tracks.
    if randnum != trackcount && !(allreadyshuffled.include? randnum) #checks if the random number matches the position--
      #--of the current track or if it has already been used.
      mixcheck = arr[randnum] #takes the full path of the current track
      mixcheck = mixcheck.split '/' #splits the path at '/'s, each split becoming an array value.
      artist = mixcheck[-3] #selects the artist (path structure is ./**/artist/album/track).
      album = mixcheck[-2] #selects the album.
      if trackcount > 0 && attempt < 50 #checks if tracklist already has a previous entry(otherwise nothing to compare)--
        #also checks number of attempts (if the playlist contains trackd from only one artist or only one album, this--
        #will stop the process after so many tries).
        if ($shuffledtracklist[trackcount-1].include? artist) || ($shuffledtracklist[trackcount-1].include? album) #checks--
          #if current track is from the same artist or album as the previous track added to the list.
          attempt = attempt + 1 #increase the attempt counter (if all track are from the same album or artist, it will stop--
          #the process after a number of attemps).
        else
          $shuffledtracklist.push arr[randnum] #if neither of the above are true (current track is from different artist--
          # and/or album than the previous tracklisting) then it is added to the tracklist.
          attempt = 0 #reset attempt counter for next track.
          trackcount = trackcount + 1 #increase track count.
        end
      else
      $shuffledtracklist.push arr[randnum] #if both of the above aren't true then the track gets copied into the--
      #shuffledtracklist array.
      trackcount = trackcount + 1 #keep track of the number of tracks already shuffled.
      allreadyshuffled.push randnum #keep track of what tracks have already been shuffled.
      end
    else
    end
  end
end

filename = 'Play_List.m3u' #create filename variable (*.m3u is a playlist extension).
tracklist = Dir["/Users/Dan/Music/iTunes/iTunes Media/Music/**/*.{mp3,m4p,m4a}"] #create tracklist array and populate--
#-- with the search reasults from searching the Music folder for mp3,m4p & m4a files.
music_shuffle tracklist #run the shuffle method on the tracklist array.
File.open filename, 'w' do |f| #open (and create) a file, name it Play_List.m3u,  request write access to it ('w')--
  #and call it oject 'f'.
  f.puts $shuffledtracklist #write the contents of the shuffledtracklist array to the file, with each item in the array--
  #on a new line.
end
