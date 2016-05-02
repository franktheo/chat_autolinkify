# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

joe   = User.create! name: 'Joe Thornton'
logan = User.create! name: 'Logan Couture'
steph  = User.create! name: 'Stephen Curry'
damond   = User.create! name: 'Damond Green'

Message.create! title: 'Sharks NFL playoff', content: 'Stanley Cup, here we come', user: joe
Message.create! title: 'Warriors NBA playoff', content: 'Marching towards another championship', user: steph
