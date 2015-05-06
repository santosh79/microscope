Meteor.publish('allPosts', () ->
  Posts.find()
)

