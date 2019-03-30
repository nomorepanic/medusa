use Mix.Config

config :medusa,
  dist: {:system, "COCKATRICE_DIST_FOLDER", "dist"},
  content: {:system, "COCKATRICE_CONTENT_FOLDER", "content"},
  templates: {:system, "COCKATRICE_TEMPLATES_FOLDER", "templates"},
  port: {:system, "COCKATRICE_PORT", 4000},
  templating_engine: Cockatrice.Adapters.Pug

if Mix.env() == :test do
  import_config "#{Mix.env()}.exs"
end
