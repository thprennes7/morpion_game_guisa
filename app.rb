# frozen_string_literal: true

$:.unshift File.expand_path("./../lib", __FILE__)

require 'router'
require 'bundler'

Bundler.require

Router.new
