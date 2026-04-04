class Usuarios::Interactors::Create
  include Interactor

  def call
    usuario = Usuario.new(context.usuario_params)
    if usuario.save
      context.usuario = usuario
    else
      context.fail!(message: "Erro ao criar usuário", errors: usuario.errors.full_messages)
    end
  end

end