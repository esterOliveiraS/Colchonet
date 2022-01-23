class User < ApplicationRecord
  # Valida se o usuário informou essas informações.
  validates_presence_of :email, :full_name, :location, :password

  # Cria um atributo "virtual" no db chamado confirmation_password,
  # se ele estiver n igual ao da senha, o model n pode ser salvo.
  validates_confirmation_of :password
end
