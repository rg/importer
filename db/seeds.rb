# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Producer.create(:name    => "Frantz Saumon",
                :email   => "frantz@saumon.com",
                :phone   => "+33 (0) 2 47 35 83 65",
                :address => "15 Chemin des Cours, Husseau, 37270 Montlouis-sur-Loire",
                :notes   => "First vintage purchased was 2009.")

Wine.create(:name        => "Mineral +",
            :vintage     => 2001, 
            :producer    => Producer.find(:first),
            :appellation => "Montlouis-sur-Loire AOC",
            :notes       => "A blend of fruit from all his plots around Montlouis.")