class Request < ApplicationRecord
  INSTRUMENTS = %w[Medidor\ de\ Energia\ Elétrica Medidor\ de\ Água Medidor\ de\ Gás]
  SERVICES = %w[Verification Expertise].freeze
  STATES = %w[Acre Alagoas Amapá Amazonas Bahia Ceará Espírito\ Santo Goiás Maranhão Mato\ Grosso Mato\ Grosso\ do\ Sul
              Minas\ Gerais Pará Paraíba Paraná Pernambuco Piauí Rio\ de\ Janeiro Rio\ Grande\ do\ Norte].freeze
  belongs_to :citizen, class_name: 'User'
  belongs_to :tech, optional: true, class_name: 'User'
  validates :instrument, :service, :location, :description, presence:true
end
