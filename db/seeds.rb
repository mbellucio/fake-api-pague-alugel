# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Condo.create!(name: 'Sai de Baixo', city: 'Rio de Janeiro')
Condo.create!(name: 'Sai de Cima', city: 'Sao Paulo')
Condo.create!(name: 'Sai do Meio', city: 'Minas Gerais')

UnitType.create!(area: 1000, description: 'Something', ideal_fraction: 0.1, condo_id: 1)
UnitType.create!(area: 2000, description: 'Another Thing', ideal_fraction: 0.2, condo_id: 1)
UnitType.create!(area: 3000, description: 'Yet Another Thing', ideal_fraction: 0.3, condo_id: 1)

Unit.create!(area: 100, floor: 1, number: 1, unit_type_id: 1)
Unit.create!(area: 200, floor: 2, number: 2, unit_type_id: 1)
Unit.create!(area: 300, floor: 3, number: 3, unit_type_id: 1)
