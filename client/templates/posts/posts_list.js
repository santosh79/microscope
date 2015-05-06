var postData = [
  {
    title: 'Meteor',
    url: 'http://meteor.com'
  }
];

Template.postsList.helpers({
  posts: postData
});

