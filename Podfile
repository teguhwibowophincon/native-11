require_relative '../RN0687/node_modules/react-native/scripts/react_native_pods'

# Uncomment the next line to define a global platform for your project
platform :ios, '11.0'
install! 'cocoapods', :deterministic_uuids => false

target 'native-11' do
  # Comment the next line if you don't want to use dynamic frameworks

  # Flags change depending on the env values.
  flags = get_default_flags()

  use_react_native!(
    :path => '../RN0687/node_modules/react-native',
    # to enable hermes on iOS, change `false` to `true` and then install pods
    :hermes_enabled => true,
    :fabric_enabled => true,
    # An absolute path to your application root.
    :app_path => "#{Pod::Config.instance.installation_root}/.."
  )

  # Enables Flipper.
  #
  # Note that if you have use_frameworks! enabled, Flipper will not work and
  # you should disable the next line.
  use_flipper!()

  post_install do |installer|
    react_native_post_install(installer)
    __apply_Xcode_12_5_M1_post_install_workaround(installer)
  end

end