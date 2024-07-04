Condo.create!(name: 'Residencial Vista Alegre', city: 'São Paulo')
Condo.create!(name: 'Condomínio Monte Belo', city: 'Rio de Janeiro')
Condo.create!(name: 'Residencial Parque Verde', city: 'Belo Horizonte')
Condo.create!(name: 'Condomínio Jardim das Flores', city: 'Curitiba')
Condo.create!(name: 'Residencial Bela Vista', city: 'Porto Alegre')
Condo.create!(name: 'Condomínio Solar do Campo', city: 'Brasília')
Condo.create!(name: 'Residencial Porto Seguro', city: 'Salvador')
Condo.create!(name: 'Condomínio Bosque Encantado', city: 'Fortaleza')
Condo.create!(name: 'Residencial Estrela do Sul', city: 'Manaus')
Condo.create!(name: 'Condomínio Vale do Sol', city: 'Recife')
Condo.create!(name: 'Residencial Nova Esperança', city: 'Goiânia')
Condo.create!(name: 'Condomínio Recanto Feliz', city: 'Belém')
Condo.create!(name: 'Residencial Jardim Imperial', city: 'Campinas')
Condo.create!(name: 'Condomínio Vila das Árvores', city: 'São Luís')
Condo.create!(name: 'Residencial Paraíso', city: 'Maceió')
Condo.create!(name: 'Condomínio Terra Nova', city: 'Natal')
Condo.create!(name: 'Residencial Estância Real', city: 'Teresina')
Condo.create!(name: 'Condomínio Monte Verde', city: 'João Pessoa')
Condo.create!(name: 'Residencial Sol Nascente', city: 'Aracaju')
Condo.create!(name: 'Condomínio Bela Jardins', city: 'Campo Grande')
Condo.create!(name: 'Edificios Centro Universitario Filadelfia', city: 'Londrina')

UnitType.create!(area: 1000, description: 'Something', ideal_fraction: 0.1, condo_id: 1)
UnitType.create!(area: 2000, description: 'Another Thing', ideal_fraction: 0.2, condo_id: 1)
UnitType.create!(area: 3000, description: 'Yet Another Thing', ideal_fraction: 0.3, condo_id: 1)

Unit.create!(area: 100, floor: 1, number: 1, unit_type_id: 1)
Unit.create!(area: 200, floor: 2, number: 2, unit_type_id: 1)
Unit.create!(area: 300, floor: 3, number: 3, unit_type_id: 1)
