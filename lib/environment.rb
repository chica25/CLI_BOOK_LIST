# Required Gems
require 'pry'
require 'HTTParty'
require 'json'
require 'open-uri'
require 'net/http'

require_relative "./cli_book_list/version"

require 'bundler'
Bundler.require

#add all models: API, BOOKList, CLI
require_relative './cli_book_list/api'
require_relative './cli_book_list/book_list'
require_relative './cli_book_list/cli'

