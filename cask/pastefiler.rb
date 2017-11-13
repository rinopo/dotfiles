cask 'pastefiler' do
  version '1.3'
  sha256 '4f52e4fe843469aec98f6360315fa0cc11e460f48b310b6b5a9eb0750b68ddc6'

  # setenv.org was verified as official when first introduced to the cask
  url 'http://setenv.org/downloads/PasteFiler.zip'
  name 'PasteFiler'
  homepage 'http://web.archive.org/web/20160218133315/http://etresoft.com/pastefiler'

  app 'PasteFiler.app'

  zap delete: [
                '~/Library/Application Scripts/com.etresoft.PasteFiler',
                '~/Library/Containers/com.etresoft.PasteFiler',
              ]
end
