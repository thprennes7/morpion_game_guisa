# frozen_string_literal: true

# On vas chercher les fichiers necesaire dans lib
$:.unshift File.expand_path("./../lib", __FILE__)


require 'router'
require 'bundler'

Bundler.require

Router.new
