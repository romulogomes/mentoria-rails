class Usuarios::Interactors::GenerateUsername
  include Interactor
  
  def call
    nome = context.usuario.nome
    username = nome.downcase.gsub(/\s+/, "_")
    context.username = username
  end
end