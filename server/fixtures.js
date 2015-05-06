var postData = [
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
];

if (Posts.find().count() === 0) {
  _.each(postData, function(post) {
    Posts.insert(post);
  });
}
