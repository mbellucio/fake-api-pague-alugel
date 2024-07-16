PropertyOwner.create!(document_number: '12312312301')
PropertyOwner.create!(document_number: '12312312302')
property_owner = PropertyOwner.create!(document_number: '12312312303')

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

p "#{Condo.count} Condo created"

UnitType.create!(area: 1000, description: 'Kitnet', ideal_fraction: 0.1, condo_id: 20)
UnitType.create!(area: 2000, description: 'Quarto e Sala', ideal_fraction: 0.2, condo_id: 20)
UnitType.create!(area: 3000, description: 'Apartamento de 2 Quartos', ideal_fraction: 0.3, condo_id: 20)
UnitType.create!(area: 1000, description: 'Apartamentinho', ideal_fraction: 0.1, condo_id: 1)
UnitType.create!(area: 2000, description: 'Apartamento', ideal_fraction: 0.2, condo_id: 1)
UnitType.create!(area: 3000, description: 'Apartamentão', ideal_fraction: 0.3, condo_id: 1)
UnitType.create!(area: 1000, description: 'Kitnet', ideal_fraction: 0.1, condo_id: 2)
UnitType.create!(area: 2000, description: 'Quarto e Sala', ideal_fraction: 0.2, condo_id: 2)
UnitType.create!(area: 3000, description: 'Apartamento de 2 Quartos', ideal_fraction: 0.3, condo_id: 2)
UnitType.create!(area: 1000, description: 'Apartamento de Ferro', ideal_fraction: 0.1, condo_id: 3)
UnitType.create!(area: 2000, description: 'Apartamento de Bronze', ideal_fraction: 0.2, condo_id: 3)
UnitType.create!(area: 3000, description: 'Apartamento de Prata', ideal_fraction: 0.3, condo_id: 3)
UnitType.create!(area: 4000, description: 'Apartamento de Ouro', ideal_fraction: 0.4, condo_id: 3)

p "#{UnitType.count} UnitType created"

Unit.create!(area: 100, floor: 1, number: 1, unit_type_id: 1, tenant_id: 1, owner_id: 1, condo_id: 1,
             description: "Apartamento de Ferro", condo_name: "Residencial Estância Real", property_owner:, owner_name: 'Gian' )
Unit.create!(area: 100, floor: 1, number: 1, unit_type_id: 2, tenant_id: 1, owner_id: 2, condo_id: 1,
             description: "Apartamento de 2 Quartos", condo_name: "Edificios Centro Universitario Filadelfia", property_owner:, owner_name: 'Gian' )
Unit.create!(area: 100, floor: 1, number: 1, unit_type_id: 3, tenant_id: nil, owner_id: 1, condo_id: 1,
             description: "Apartamentinho", condo_name: "Residencial Sol Nascente", property_owner:, owner_name: 'Gian' )

Unit.create!(area: 100, floor: 1, number: 1, unit_type_id: 4)
Unit.create!(area: 200, floor: 2, number: 2, unit_type_id: 4)
Unit.create!(area: 300, floor: 3, number: 3, unit_type_id: 4)

p "#{Unit.count} Unit created"

# São Paulo
CommonArea.create!(name: 'Piscina', description: 'Piscina grande cabe até golfinhos', max_occupancy: 50,
                   rules: 'Não pode comer na área da piscina', condo_id: 1)
CommonArea.create!(name: 'Academia',
                   description: 'Uma academia raíz com ventilador apenas para os marombas', max_occupancy: 20,
                   rules: 'Não pode ser frango', condo_id: 1)
CommonArea.create!(name: 'Salão de Festa', description: 'Salão preparado para grandes festas',
                   max_occupancy: 80, rules: 'Som alto somente até as 22h', condo_id: 1)
CommonArea.create!(name: 'Salão de jogos', description: 'Jogos para toda família', max_occupancy: 20,
                   rules: 'Aberto para toda família', condo_id: 1)
CommonArea.create!(name: 'Jardim Botânico Interno', description: 'Hambiente relaxante',
                   max_occupancy: 15, rules: 'Aberto para toda família', condo_id: 1)
CommonArea.create!(name: 'Playground', description: 'Habiente para toda família',
                   max_occupancy: 20, rules: 'Aberto para todas as crianças', condo_id: 1)

# Rio de Janeiro
CommonArea.create!(name: 'Piscina', description: 'Piscina grande cabe até golfinhos', max_occupancy: 50,
                   rules: 'Não pode comer na área da piscina', condo_id: 2)
CommonArea.create!(name: 'Academia',
                   description: 'Uma academia raíz com ventilador apenas para os marombas', max_occupancy: 20,
                   rules: 'Não pode ser frango', condo_id: 2)
CommonArea.create!(name: 'Salão de Festa', description: 'Salão preparado para grandes festas',
                   max_occupancy: 80, rules: 'Som alto somente até as 22h', condo_id: 2)
CommonArea.create!(name: 'Salão de jogos', description: 'Jogos para toda família', max_occupancy: 20,
                   rules: 'Aberto para toda família', condo_id: 2)
CommonArea.create!(name: 'Jardim Botânico Interno', description: 'Hambiente relaxante',
                   max_occupancy: 15, rules: 'Aberto para toda família', condo_id: 2)
CommonArea.create!(name: 'Playground', description: 'Habiente para toda família',
                   max_occupancy: 20, rules: 'Aberto para todas as crianças', condo_id: 2)

# Minas Gerais
CommonArea.create!(name: 'Piscina', description: 'Piscina grande cabe até golfinhos', max_occupancy: 50,
                   rules: 'Não pode comer na área da piscina', condo_id: 3)
CommonArea.create!(name: 'Academia',
                   description: 'Uma academia raíz com ventilador apenas para os marombas', max_occupancy: 20,
                   rules: 'Não pode ser frango', condo_id: 3)
CommonArea.create!(name: 'Salão de Festa', description: 'Salão preparado para grandes festas',
                   max_occupancy: 80, rules: 'Som alto somente até as 22h', condo_id: 3)
CommonArea.create!(name: 'Salão de jogos', description: 'Jogos para toda família', max_occupancy: 20,
                   rules: 'Aberto para toda família', condo_id: 3)
CommonArea.create!(name: 'Jardim Botânico Interno', description: 'Hambiente relaxante',
                   max_occupancy: 15, rules: 'Aberto para toda família', condo_id: 3)
CommonArea.create!(name: 'Playground', description: 'Habiente para toda família',
                   max_occupancy: 20, rules: 'Aberto para todas as crianças', condo_id: 3)

# Curitiba
CommonArea.create!(name: 'Piscina', description: 'Piscina grande cabe até golfinhos',
                   max_occupancy: 50, rules: 'Não pode comer na área da piscina', condo_id: 4)
CommonArea.create!(name: 'Academia',
                   description: 'Uma academia raíz com ventilador apenas para os marombas', max_occupancy: 20,
                   rules: 'Não pode ser frango', condo_id: 4)
CommonArea.create!(name: 'Salão de Festa', description: 'Salão preparado para grandes festas',
                   max_occupancy: 80, rules: 'Som alto somente até as 22h', condo_id: 4)
CommonArea.create!(name: 'Salão de jogos', description: 'Jogos para toda família',
                   max_occupancy: 20, rules: 'Aberto para toda família', condo_id: 4)
CommonArea.create!(name: 'Jardim Botânico Interno', description: 'Hambiente relaxante',
                   max_occupancy: 15, rules: 'Aberto para toda família', condo_id: 4)
CommonArea.create!(name: 'Playground', description: 'Habiente para toda família',
                   max_occupancy: 20, rules: 'Aberto para todas as crianças', condo_id: 4)

# Fortaleza
CommonArea.create!(name: 'Piscina', description: 'Piscina grande cabe até golfinhos',
                   max_occupancy: 50, rules: 'Não pode comer na área da piscina', condo_id: 8)
CommonArea.create!(name: 'Academia',
                   description: 'Uma academia raíz com ventilador apenas para os marombas', max_occupancy: 20,
                   rules: 'Não pode ser frango', condo_id: 8)
CommonArea.create!(name: 'Salão de Festa', description: 'Salão preparado para grandes festas',
                   max_occupancy: 80, rules: 'Som alto somente até as 22h', condo_id: 8)
CommonArea.create!(name: 'Salão de jogos', description: 'Jogos para toda família', max_occupancy: 20,
                   rules: 'Aberto para toda família', condo_id: 8)
CommonArea.create!(name: 'Jardim Botânico Interno', description: 'Hambiente relaxante',
                   max_occupancy: 15, rules: 'Aberto para toda família', condo_id: 8)
CommonArea.create!(name: 'Playground', description: 'Habiente para toda família',
                   max_occupancy: 20, rules: 'Aberto para todas as crianças', condo_id: 8)

# Campo Grande
CommonArea.create!(name: 'Piscina', description: 'Piscina grande cabe até golfinhos', max_occupancy: 50,
                   rules: 'Não pode comer na área da piscina', condo_id: 20)
CommonArea.create!(name: 'Academia',
                   description: 'Uma academia raíz com ventilador apenas para os marombas', max_occupancy: 20,
                   rules: 'Não pode ser frango', condo_id: 20)
CommonArea.create!(name: 'Salão de Festa', description: 'Salão preparado para grandes festas',
                   max_occupancy: 80, rules: 'Som alto somente até as 22h', condo_id: 20)
CommonArea.create!(name: 'Salão de jogos', description: 'Jogos para toda família', max_occupancy: 20,
                   rules: 'Aberto para toda família', condo_id: 20)
CommonArea.create!(name: 'Jardim Botânico Interno', description: 'Hambiente relaxante',
                   max_occupancy: 15, rules: 'Aberto para toda família', condo_id: 20)
CommonArea.create!(name: 'Playground', description: 'Habiente para toda família',
                   max_occupancy: 20, rules: 'Aberto para todas as crianças', condo_id: 20)

p "#{CommonArea.count} CommonArea created"
