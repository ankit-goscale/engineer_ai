# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

  channel_names = ["Australia", "Network,", "Big", "CBS", "Prime,", "STAR", "World,", "FX", "Zee"]
  show_names = ["Aaron Needs a Job", "Alaska: The Last Frontier", "Alaskan Bush People", "American Chopper", "BattleBots", "Bering Sea Gold", "Cash Cab", "Contact", "Daily Planet", "Deadliest Catch", "Diesel Brothers", "Dirty Mudder Truckers", "Dual Survival", "Edge of Alaska", "Expedition Unknown", "Fast N' Loud", "Finding Escobar's Millions", "Frontier", "Gold Rush", "Gold Rush: White Water", "Guardians of the Glades", "Homestead Rescue", "The Impossible Row", "Jeremy Wade's Dark Waters", "Killing Fields", "The Last Alaskans", "Man vs. Bear"]
  channel_names.each do |channel_name|
    TvChannel.create(name: channel_name, description: 'channel description');
  end

  show_names.each_with_index do |show_name, index|
    start_time = TvShow.last.present? ? TvShow.last.start_time + 1.hours : DateTime.now
    end_time = TvShow.last.present? ? TvShow.last.end_time + 1.hours : DateTime.now + 1
    channel_id = (index >= 3 ? (index/3) : 1)
    TvShow.create(name: show_name, start_time: start_time, end_time: end_time, tv_channel_id: channel_id )
  end