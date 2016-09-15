//Jquery that will recive the input or rows and collums
//store in a variable
// reference in the cols and rows variable


var cols = 2 + 1;
var rows = 2 + 1;

var settings = {
  rowCssPrefix: 'row-',
  colCssPrefix: 'col-',
  seatWidth: 35,
  seatHeight: 35,
  seatCss: 'seat',
  selectedSeatCss: 'selectedSeat',
  selectingSeatCss: 'selectingSeat',
  columHeader: ['ALERT', 'A', 'B', 'C', 'D', 'E', 'F']
};

var createTable = function(reservedSeat) {
  var str = [],
    seatNo, className;
  for (var i = 1; i < rows; i++) {
    for (var j = 1; j < cols; j++) {

      seatNo = (i);
      collumId = settings.columHeader[j];
      seatId = (seatNo + collumId);

      className = settings.seatCss + ' ' + settings.rowCssPrefix + i.toString() + ' ' + settings.colCssPrefix + j.toString();

      if ($.isArray(reservedSeat) && $.inArray(seatNo, reservedSeat) != -1) {
        className += ' ' + settings.selectedSeatCss;
      }

      str.push('<li class="' + className + '"' +
        'style="top:' + (i * settings.seatHeight).toString() + 'px;left:' + (j * settings.seatWidth).toString() + 'px">' +
        '<a title="' + seatId + '">' + '</a>' +
        '</li>');
      console.log(str);
    }

  }

  $('#place').append(str.join(''));

  console.log(str);
};
//AirPlane Create
$(document).ready(function() {

  $('#save').on('click', function() {



    createTable();

  });
});
