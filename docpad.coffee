# DocPad Configuration File
# http://docpad.org/docs/config

# Define the DocPad Configuration
docpadConfig = {
  plugins:
    sunny:
      configFromEnv: true
      envPrefixes: ["DOCPAD_SUNNY_", "DOCPAD_"]
      cloudConfigs: [
        {
          sunny: {
            provider: 'aws'
            account: 'AKIAI5O4YZFS4QCKKMCA'
            ssl: true
          }
          container: 'ethanbrown.us'
          #Uses the policy already set on S3.
          acl: false
          # Retry as long as is necessary until the upload works.
          retryLimit: -1
        }
      ]
}

# Export the DocPad Configuration
module.exports = docpadConfig
