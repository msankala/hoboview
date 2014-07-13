# -*- encoding : utf-8 -*-
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#=begin
Panorama.create({image: File.new("/home/manu/Kuvat/SavonlinnaView/Hirviniemi-3000.jpg", "r"), lat: 62.2218, lon: 28.9036, center: 192, heading: 267, title: 'Hirviniemi', description: 'Hirviniemi'})
Panorama.create({image: File.new("/home/manu/Kuvat/SavonlinnaView/Kaija-3000.jpg", "r"), lat: 61.9666, lon: 28.8665, center: 140, heading: 326, title: 'Kaijanlaavu', description: 'Kaijanlaavu'})
Panorama.create({image: File.new("/home/manu/Kuvat/SavonlinnaView/Kaupinsaari-3000.jpg", "r"), lat: 61.8560, lon: 28.8909, center: 142, heading:  46, title: 'Kaupinsaari', description: 'Kaupinsaaren luoteisniemi'})
Panorama.create({image: File.new("/home/manu/Kuvat/SavonlinnaView/Kirkkoranta-3000.jpg", "r"), lat: 62.2367, lon: 28.8914, center: 217, heading:   0, title: 'Kirkkoranta', description: 'Kirkkoranta'})
Panorama.create({image: File.new("/home/manu/Kuvat/SavonlinnaView/Kuikankolo-3000.jpg", "r"), lat: 61.8523, lon: 28.7382, center:  32, heading:  97, title: 'Kuikankolo', description: 'Kuikankolo'})
Panorama.create({image: File.new("/home/manu/Kuvat/SavonlinnaView/Laajakaarre-3000.jpg", "r"), lat: 62.2604, lon: 28.8578, center: 130, heading:   0, title: 'Laajakaarre', description: 'Laajakaarre'})
Panorama.create({image: File.new("/home/manu/Kuvat/SavonlinnaView/Lapinniemi-3000.jpg", "r"), lat: 62.2732, lon: 28.8147, center: 235, heading:   0, title: 'Lapinniemi', description: 'Lapinniemi'})
Panorama.create({image: File.new("/home/manu/Kuvat/SavonlinnaView/Lohilahti-3000.jpg", "r"), lat: 62.2079, lon: 28.9183, center: 273, heading:   0, title: 'Lohilahti', description: 'Lohilahti'})
Panorama.create({image: File.new("/home/manu/Kuvat/SavonlinnaView/Lokkiluoto-3000.jpg", "r"), lat: 61.8928, lon: 28.8125, center: 183, heading:   0, title: 'Lokkiluoto', description: 'Lokkiluoto Pitkänniemen kuntoradan vierellä'})
Panorama.create({image: File.new("/home/manu/Kuvat/SavonlinnaView/Mustalampi-3000.jpg", "r"), lat: 61.8471, lon: 28.7642, center:  45, heading: 316, title: 'Mustalampi', description: 'Mustalammen laavu'})
Panorama.create({image: File.new("/home/manu/Kuvat/SavonlinnaView/Pitkäsaari-3000.jpg", "r"), lat: 62.3073, lon: 28.7474, center: 179, heading:   0, title: 'Pitkäsaari', description: 'Pitkäsaari'})
Panorama.create({image: File.new("/home/manu/Kuvat/SavonlinnaView/Pitkäniemi-3000.jpg", "r"), lat: 61.8932, lon: 28.8053, center: 195, heading: 155, title: 'Pitkänniemen grillikatos', description: 'Pitkänniemen grillikatos'})
Panorama.create({image: File.new("/home/manu/Kuvat/SavonlinnaView/Pyylinoja-3000.jpg", "r"), lat: 62.2747, lon: 28.7441, center: 337, heading:   0, title: 'Pyylinoja', description: 'Pyylinoja'})
Panorama.create({image: File.new("/home/manu/Kuvat/SavonlinnaView/Riihisaari-3000.jpg", "r"), lat: 61.8640, lon: 28.8955, center:   0, heading:   0, title: 'Riihisaari', description: 'Riihisaari'})
Panorama.create({image: File.new("/home/manu/Kuvat/SavonlinnaView/Simuna-3000.jpg", "r"), lat: 61.8303, lon: 28.9024, center: 332, heading: 283, title: 'Simuna', description: 'Simuna'})
Panorama.create({image: File.new("/home/manu/Kuvat/SavonlinnaView/Sireenisaari-3000.jpg", "r"), lat: 61.8770, lon: 28.8811, center: 247, heading:   0, title: 'Sireenisaari', description: 'Sireenisaari'})
Panorama.create({image: File.new("/home/manu/Kuvat/SavonlinnaView/Soininmaki-3000.jpg", "r"), lat: 61.8498, lon: 28.7573, center: 224, heading: 138, title: 'Soininmaki', description: 'Soininmäki'})
Panorama.create({image: File.new("/home/manu/Kuvat/SavonlinnaView/Syväniemi-3000.jpg", "r"), lat: 62.2392, lon: 28.8138, center: 198, heading: 240, title: 'Syväniemi', description: 'Syväniemi'})
Panorama.create({image: File.new("/home/manu/Kuvat/SavonlinnaView/Toso-3000.jpg", "r"), lat: 61.9814, lon: 28.8142, center: 120, heading:  59, title: 'Tosonlaavu', description: 'Tosonlaavu'})
Panorama.create({image: File.new("/home/manu/Kuvat/SavonlinnaView/Uuras-3000.jpg", "r"), lat: 61.8567, lon: 28.8696, center: 149, heading:   0, title: 'Uuraansaari', description: 'Uuraansaari'})
Panorama.create({image: File.new("/home/manu/Kuvat/SavonlinnaView/Vaajasalo-3000.jpg", "r"), lat: 62.2083, lon: 28.9044, center: 156, heading:   0, title: 'Vaajasalo', description: 'Vaajasalo'})
Panorama.create({image: File.new("/home/manu/Kuvat/SavonlinnaView/Verkkosaari-3000.jpg", "r"), lat: 61.8730, lon: 28.8834, center: 100, heading:   0, title: 'Verkkosaari', description: 'Verkkosaari' })
Panorama.create({image: File.new("/home/manu/Kuvat/SavonlinnaView/Vaaranmäki-3000.jpg", "r"), lat: 62.2083, lon: 28.9044, center: 156, heading:   0, title: 'Vaaranmäki', description: 'Vaaranmäen lintutorni'})
#=end