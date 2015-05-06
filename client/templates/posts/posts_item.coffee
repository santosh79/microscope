d = () ->
  a = document.createElement('a')
  a.href = this.url
  a.hostname

Template.postItem.helpers({
  domain: d
})
