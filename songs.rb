require_relative 'artist'

class Song

  attr_reader

  def initialize(name, duration, artist)
    @name = name
    @duration = duration
    @artist = artist
  end

  def name
    @name
  end

  def artist
    @artist
  end

  def duration
    "#{@duration / 60} minutes and #{@duration % 60} seconds"
  end

  def full_description
    "#{@name} by #{@artist.name}, #{duration}"
  end

end

billy_joel = Artist.new('Billy Joel')
billy_joel.create_song("Honesty", 197)
billy_joel.create_song('Allentown', 197)
billy_joel.create_song("We didn't start the fire)", 178)
billy_joel.create_song("Goodnight Saigon", 302)

motley_crue = Artist.new('Motley Crew')
motley_crue.create_song('Wild Side', 254)

skid_row = Artist.new('Skid Row')
skid_row.create_song("Youth Gone Wild", 128)


puts "Song Names"
puts song_1.name
puts song_2.name
puts song_3.name

puts "Song Durations"
puts song_1.duration
puts song_2.duration
puts song_3.duration

puts "Full description"
puts song_1.full_description
puts song_2.full_description
puts song_3.full_description
