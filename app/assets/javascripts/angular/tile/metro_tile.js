angular.module('stats.metro_tile')

.directive('metroTile', metroTile);

function metroTile() {
  var directive = {
    restrict: 'EA',
    scope: {
      'frontImg': '@',
      'backImg': '@'
    },
    template: [
  '<div id="tile1" class="live-tile red">',
    '<span class="tile-title">tile title</span>',
    '<div><a class="full" href="#">front</a></div>',
    '<div><p>the front face slides vertically by default to reveal the back.</p></div>',
  '</div>',
  '<div id="tile2" class="live-tile blue" data-direction="horizontal">',
    '<span class="tile-title">tile title</span>',
    '<div>front</div>',
    '<div><p>the front tile slides horizontally to reveal the back because data-direction is set to horizontal</p></div>',
  '</div>'
    ].join(""),
    link: function() {
      angular.element(".live-tile").liveTile();
    }
  };

  return directive;
}