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

requireLogin = () ->
  if ! Meteor.user()
    this.render 'accessDenied'
  else
    this.next()

Router.route('/post_new', {name: 'postSubmit'})
Router.onBeforeAction('dataNotFound', {only: 'postPage'})
Router.onBeforeAction(requireLogin, {only: 'postSubmit'})
