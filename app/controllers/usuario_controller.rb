class UsuarioController < ApplicationController
  def index 
    usuarios = Usuario.all
    render json: usuarios
  end
  def show 
    usuario = Usuario.find(params[:id])
    render json: usuario
  end
end
