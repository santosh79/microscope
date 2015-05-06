function d() {
  return "hi";
}

Template.postItem.helpers({
  domain: d
});
