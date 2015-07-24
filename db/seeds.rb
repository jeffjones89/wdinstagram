require 'bundler/setup'
require "pry"

require_relative "../db/connection"
require_relative "../models/entry"

Entry.destroy_all

Entry.create(author: "Kevin Durant", photo_url: "http://i.imgur.com/BvUl8.jpg", date_taken: "2015-02-20")
Entry.create(author: "Pedro Martinez", photo_url: "http://photos1.blogger.com/img/21/1241/640/pedro%20and%20midget.jpg", date_taken: "2014-10-25")
Entry.create(author: "Ken Griffey Jr", photo_url: "https://upload.wikimedia.org/wikipedia/commons/1/19/Ken_Griffey,_Jr._June_2009.jpg", date_taken: "2015-06-20")
