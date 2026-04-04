class UsuarioController < ApplicationController
  def index 
    usuarios = Usuario.all
    render json: usuarios
  end
  
  def show 
    usuario = Usuario.find(params[:id])
    render json: usuario
  end
  
  def create
    result = Usuarios::Organizers::SignUp.call(usuario_params: usuario_params)
    if result.success?
      render json: result.usuario, status: :created
    else
      render json: { error: "Nao foi possivel criar o usuario" }, status: :internal_server_error
    end
  end

  private

  def usuario_params
    params.require(:usuario).permit(:nome, :email)
  end
end
