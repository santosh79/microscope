Router.configure({
  layoutTemplate: 'layout',
  loadingTemplate: 'loading',
  notFoundTemplate: 'notFound',
  waitOn: () ->
    Meteor.subscribe 'allPosts'
})
Router.route '/', {name: 'postsList'}
Router.route('/posts/:_id', {
  name: 'postPage',
  data: () ->
    Posts.findOne this.params._id
})

Router.onBeforeAction('dataNotFound', {only: 'postPage'})
