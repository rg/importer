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
                
Producer.create(:name    => "Dominique Belluard",
                :email   => "dominique@belluard.com",
                :phone   => "+33 (0) 2 47 35 83 65",
                :address => "15 Chemin des Cours, Husseau, 37270 Savoie",
                :notes   => "Concrete eggs.")                

Wine.create(:name        => "Mineral +",
            :vintage     => 2001, 
            :producer    => Producer.find_by_name("Frantz Saumon"),
            :appellation => "Montlouis-sur-Loire AOC",
            :notes       => "A blend of fruit from all his plots around Montlouis.")
            
Wine.create(:name        => "Mont Blanc Brut Zero",
            :vintage     => 2006, 
            :producer    => Producer.find_by_name("Dominique Belluard"),
            :appellation => "Mont Blanc",
            :notes       => "Top vineyard on the hill")

Bottling.create(:wine               => Wine.find_by_name("Mineral +"),
                :sku                => "SKU0000001",
                :bottle_size        => ML750,
                :warehouse_location => "in the back")

Bottling.create(:wine               => Wine.find_by_name("Mineral +"),
                :sku                => "SKU0000002",
                :bottle_size        => ML1500,
                :warehouse_location => "over there")
                
Bottling.create(:wine               => Wine.find_by_name("Mont Blanc Brut Zero"),
                :sku                => "SKU0000003",
                :bottle_size        => ML750,
                :warehouse_location => "mkay")                