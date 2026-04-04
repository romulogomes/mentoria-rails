class Usuarios::Organizers::SignUp
  include Interactor::Organizer

  organize(
    Usuarios::Interactors::Create,
    Usuarios::Interactors::GenerateUsername,
    Usuarios::Interactors::SendEmail
  )

end