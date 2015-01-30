angular.module('stats.metro_tile')

.directive('metro-tile', metroTile);

function metroTile() {
  var directive = {
    restrict: 'EA',
    scope: {
      'frontImg': '@',
      'backImg': '@'
    },
    template: [
      "<div class='live-tile'>",
      "<img src='{{frontImg}}'>",
      "<img src='{{backImg}}'>",
      "</div>"
    ].join(""),
    link: function() {
      angular.element('.live-tile').liveTile();
    }
  };

  return directive;
}