module RequireHelper
  # Require 1-n models
  #
  # ==== Examples
  #
  #  require_model  :country
  #  require_model  :city
  #
  #  require_models :country, :city
  #  require_models :state, :property
  #
  def require_model(*models)
    models.flatten.each { |file| require "app/models/#{file.to_s}" }
  end
  alias :require_models :require_model

  # Require 1-n validator
  #
  # ==== Examples
  #
  #  require_validator  :crm
  #  require_validator  :city
  #
  #  require_validators :country, :city
  #  require_validators :state, :property
  #
  def require_validator(*validators)
    validators.flatten.each { |file| require "app/validators/#{file.to_s}_validator" }
  end
  alias :require_validators :require_validator

  # Require file from app/business folder
  #
  # ==== Examples
  #
  #  require_business  :country
  #  require_business  :city
  #
  def require_business(*business)
    business.flatten.each { |file| require "app/business/#{file.to_s}"}
  end

  # Require file from app/presenters folder
  #
  # ==== Examples
  #
  #  require_presenter   :user_presenter
  #  require_presenters  :user_presenter, :city_presenter
  #
  def require_presenter(*presenters)
    presenters.flatten.each { |file| require "app/presenters/#{file.to_s}"}
  end
  alias :require_presenters :require_presenter

  # Require file from app/enumerations folder
  #
  # ==== Examples
  #
  #  require_enumeration :user_type
  #  require_enumerations :user_type, :patology_status
  #
  def require_enumeration(*enumerations)
    enumerations.flatten.each { |file| require "app/enumerations/#{file.to_s}"}
  end
  alias :require_enumerations :require_enumeration

  # Require file from spec/shared_examples folder
  #
  # ==== Examples
  #
  #  require_shared_example :company
  #
  def require_shared_example(*shared_example)
    shared_example.flatten.each { |file| require "spec/shared_examples/#{file.to_s}_shared_example"}
  end
  alias :require_shared_examples :require_shared_example
end
include RequireHelper