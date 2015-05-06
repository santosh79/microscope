postData = [
  {
    title: 'Introducing Telescope',
    url: 'http://sachagreif.com/introducing-telescope/'
  },
  {
    title: 'Meteor',
    url: 'http://meteor.com'
  },
  {
    title : 'The Meteor Book',
    url: 'http://themeteorbook.com'
  }
]

dbEmpty =  Posts.find().count() == 0
if dbEmpty
  Posts.insert(post) for post in postData

