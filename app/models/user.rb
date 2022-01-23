class User < ApplicationRecord
  # Valida se o usuário informou essas informações.
  validates_presence_of :email, :full_name, :location, :password

  # Cria um atributo "virtual" no db chamado confirmation_password,
  # se ele estiver n igual ao da senha, o model n pode ser salvo.
  validates_confirmation_of :password

  # Valida se a bio tem no mínino 30 caracteres
  # E se a bio pode ou não pode está em branco. Nesse caso não pode.
  validates_length_of :bio, :mininum => 30, :allow_blank => false

  # Validando email
  validates_format_of :email, :with => /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/
  validates_uniqueness_of :email
end
