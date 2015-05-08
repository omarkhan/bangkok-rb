RailsAdmin.config do |config|

  ### Popular gems integration

  # == Devise ==
  config.authenticate_with do
    warden.authenticate! scope: :user
  end
  config.current_user_method(&:current_user)

  config.model Info do
    edit do
      # For RailsAdmin >= 0.5.0
      # To configure the editor bar or the parser rules pass a hash of options:
      # For RailsAdmin >= 0.5.0
      field :about, :wysihtml5 do
        config_options toolbar: { fa: true }, # use font-awesome instead of glyphicon
                       html: true, # enables html editor
                       parserRules: { tags: { p:1 } } # support for <p> in html mode
      end   
      # For RailsAdmin < 0.5.0
      # field :description do
      #   bootstrap_wysihtml5 true
      # end
    end
  end

  ## == Cancan ==
  # config.authorize_with :cancan

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end
end

