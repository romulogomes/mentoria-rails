class Usuarios::Interactors::SendEmail
  include Interactor

  def call
    puts "Iniciando envio de email..."
    usuario = context.usuario
    username = context.username
    
    puts "Enviando email para #{usuario.email}..."
    puts "Username: #{username}"
  end
end