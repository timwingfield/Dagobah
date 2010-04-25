$: << '../Dagobah/bin/Debug'


require 'rubygems'

$_spec_spec = true #Prevents Kernal.exit in various places (from Ben Hall)
require 'spec'

require 'Dagobah.dll'
include Dagobah

#require mocks.rb => sets up some simple data stubs
