# frozen_string_literal: true

module ::Docs
  class Engine < ::Rails::Engine
    isolate_namespace Docs

    config.after_initialize do
      Discourse::Application.routes.append do
        mount ::Docs::Engine, at: '/how-to'
        get '/knowledge-explorer', to: redirect("/how-to")
      end
    end
  end
end
