import Config

config :avrora_runtime_config, AvroraRuntimeConfig.AvroraClient,
  registry_url: System.fetch_env!("SCHEMA_REGISTRY_URL")
