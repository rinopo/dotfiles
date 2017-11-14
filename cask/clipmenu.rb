cask 'clipmenu' do
  version '0.4.3'
  sha256 'd0d7ca6c23f51b2dfe78c7bb40bf2f212c21b3304b3eacde86112d8ef3e6bfb9'

  # setenv.org was verified as official when first introduced to the cask
  url 'http://setenv.org/downloads/ClipMenu_0.4.3.dmg'
  name 'ClipMenu'
  homepage 'https://github.com/naotaka/ClipMenu'

  app 'ClipMenu.app'

  zap delete: [
                '~/Library/Application Support/ClipMenu',
                '~/Library/Caches/com.naotaka.ClipMenu',
                '~/Library/Preferences/com.naotaka.ClipMenu.plist',
              ]
end
