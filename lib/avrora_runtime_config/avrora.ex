defmodule AvroraRuntimeConfig.AvroraClient do
  use Avrora.Client,
    otp_app: :avrora_runtime_config,
    registry_schemas_autoreg: false,
    schemas_path: "priv/schemas"
end
