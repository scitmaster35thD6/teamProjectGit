function init3(strDate,endDate,timezone,callback){
	//사용자가 등록한 일정 불러오기
	var memberId = $("#logId").val();
	
	  var data = {
	    "memberId" : memberId
	  };
	  $.ajax({
	    method : 'post'
	    , url : 'selectallcalendar'
	    , data : JSON.stringify(data)
	    , dataType : 'json'
	    , contentType : 'application/json; charset=UTF-8'
	    , success: function(response) {
	      var result = output2(response);
	        //alert(JSON.stringify(response));
	        callback(result2);
	    }
	  });//ajax
	
};


function init2(strDate,endDate,timezone,callback){
  //ajax로 전체 데이터를 끌어옴
  var memberId = $("#logId").val();
  var data = {
    "memberId" : memberId
  };
  $.ajax({
    method : 'post'
    , url : 'gocalendar'
    , data : JSON.stringify(data)
    , dataType : 'json'
    , contentType : 'application/json; charset=UTF-8'
    , success: function(response) {
      var result = output(response);
        //alert(JSON.stringify(response));
        callback(result);
    }
  });//ajax
};

function output(resp) {
  //alert(JSON.stringify(resp));
  var date2 = new Date();
  var result = [];
  for (var i in resp) {
    var date = new Date();
    date = toTimeObject(resp[i].openingTerm);
    var ttl = resp[i].exhibitionTitleKor;
    //alert(date+"데이트");
    //alert(ttl+"타이즐");
    var items = {
      title : ttl,
      start : date,
      className: 'bg-success'
    }; 
    result.push(items);
  };
  return result;
};

function output2(resp) {
	  //alert(JSON.stringify(resp));
	  var date2 = new Date();
	  var result2 = [];
	  for (var i in resp) {
	    var ttl = resp[i].title;
	    var startD = resp[i].startDay;
	    var endD = resp[i].endDay;
	    var classN = resp[i].bgType;
	    var calendarId = resp[i].calendarId;
	    //alert(calendarId);
	    //alert(date+"데이트");
	    //alert(ttl+"타이즐");
	    var items = {
	      title : ttl,
	      start : startD,
	      className: className,
	      "calendarId" : calendarId
	    }; 
	    result2.push(items);
	  };
	  return result2;
	};



function toTimeObject(str) {
  //alert("str"+str);
  var year = str.substring(0, 4);
  var month = str.substring(4, 6)-1;
  var day  = str.substring(6, 8);
  /*alert(year+"이얼");
  alert(month+"먼스");
  alert(day+"데이");*/
  return new Date(year,month, day);	
};

! function($) {
  "use strict";
  var CalendarApp = function() {
    this.$body = $("body")
    this.$calendar = $('#calendar'),
    this.$event = ('#calendar-events div.calendar-events'),
    this.$categoryForm = $('#add-new-event form'),
    this.$extEvents = $('#calendar-events'),
    this.$modal = $('#my-event'),
    this.$saveCategoryBtn = $('.save-category'),
    this.$calendarObj = null;
  };

  /* on drop */
  CalendarApp.prototype.onDrop = function(eventObj, date) {
    var $this = this;
    // retrieve the dropped element's stored Event Object
    var originalEventObject = eventObj.data('eventObject');
    var $categoryClass = eventObj.attr('data-class');
    // we need to copy it, so that multiple events don't have a reference to the same object
    var copiedEventObject = $.extend({}, originalEventObject);
    // assign it the date that was reported
    copiedEventObject.start = date;
    if ($categoryClass)
      copiedEventObject['className'] = [$categoryClass];
    // render the event on the calendar
    $this.$calendar.fullCalendar('renderEvent', copiedEventObject, true);
    // is the "remove after drop" checkbox checked?
    if ($('#drop-remove').is(':checked')) {
      // if so, remove the element from the "Draggable Events" list
      eventObj.remove();
    }
  },
  
  /* on click on event */
  CalendarApp.prototype.onEventClick = function(calEvent, jsEvent, view) {
    var $this = this;
    var form = $("<form></form>");
    form.append("<label>Change event name</label>");
    form.append("<div class='input-group'><input class='form-control' type=text value='" + calEvent.title + "' /><span class='input-group-btn'><button type='submit' class='btn btn-success waves-effect waves-light'><i class='fa fa-check'></i> Save</button></span></div>");
    $this.$modal.modal({
      backdrop: 'static'
    });
    //삭제했을 경우
    $this.$modal.find('.delete-event').show().end().find('.save-event').hide().end().find('.modal-body').empty().prepend(form).end().find('.delete-event').unbind('click').click(function() {
      $this.$calendarObj.fullCalendar('removeEvents', function(ev) {
        return (ev._id == calEvent._id);
      });
      $this.$modal.modal('hide');
    });
    $this.$modal.find('form').on('submit', function() {
      calEvent.title = form.find("input[type=text]").val();
      $this.$calendarObj.fullCalendar('updateEvent', calEvent);
      $this.$modal.modal('hide');
      return false;
    });
  },

  /* on select */
  CalendarApp.prototype.onSelect = function(start, end, allDay) {
	  
    var $this = this;
    $this.$modal.modal({
      backdrop: 'static'
    });
    var form = $("<form></form>");
    form.append("<div class='row'></div>");
    form.find(".row")
      .append("<div class='col-md-6'><div class='form-group'><label class='control-label'>Event Name</label><input class='form-control' placeholder='Insert Event Name' type='text' id='title' name='title'/></div></div>")
      .append("<div class='col-md-6'><div class='form-group'><label class='control-label'>Category</label><select class='form-control' id='category' name='category'></select></div></div>")
      .find("select[id='category']")
      .append("<option value='bg-danger'>Danger</option>")
      .append("<option value='bg-success'>Success</option>")
      .append("<option value='bg-primary'>Primary</option>")
      .append("<option value='bg-info'>Info</option>")
      .append("<option value='bg-warning'>Warning</option></div></div>");
    $this.$modal.find('.delete-event').hide().end().find('.save-event').show().end().find('.modal-body').empty().prepend(form).end().find('.save-event').unbind('click').click(function() {
      form.submit();
    });
    $this.$modal.find('form').on('submit', function() {
      var title = form.find("input[id='title']").val();
      var beginning = form.find("input[name='beginning']").val();
      var ending = form.find("input[name='ending']").val();
      var categoryClass = form.find("select[id='category'] option:checked").val();
      var memberId = $("#logId").val();
      //var startString = toGMTString(start);
      var startDay   = start.toLocaleString();
      var endDay = end.toLocaleString();
      //alert(startDay);
      /**스타트데이**/
      var sMonth = startDay.substring(4, 7);
      var sDay = startDay.substring(8,10);
      var sYear = startDay.substring(11,15);
      switch(sMonth){
    	case 'Jan':
    		sMonth='01';
    	   break;
    	   
    	case 'Feb':
    		sMonth='02';
     	   break;
     	   
    	case 'Mar':
    		sMonth='03';
     	   break;
    	case 'Apr':
    		sMonth='04';
     	   break;
    	case 'May':
    		sMonth='05';
     	   break;
    	case 'Jun':
    		sMonth='06';
        break;
    	case 'Jul':
    		sMonth='07';
     	   break;
    	case 'Aug':
    		sMonth='08';
     	   break;
    	case 'Sep':
    		sMonth='09';
     	   break;
    	case 'Oct':
    		sMonth='10';
     	   break;
    	case 'Nov':
    		sMonth='11';
     	   break;
    	case 'Dec':
    		sMonth='12';
     	   break;
    	default:
    		alert("오류");
    		break;
      }
      startDay =  
      sYear.concat(sMonth).concat(sDay);
     // alert(startDay);
      /**스타트데이**/
      
      
      /**엔드데이**/
      var eMonth = endDay.substring(4, 7);
      var eDay = endDay.substring(8,10);
    //  var eDay2 = parseInt(eDay)-1;
     // eDay = eDay2.toString();
      var eYear = endDay.substring(11,15);
      switch(eMonth){
    	case 'Jan':
    		eMonth='01';
    	   break;
    	   
    	case 'Feb':
    		eMonth='02';
     	   break;
     	   
    	case 'Mar':
    		eMonth='03';
     	   break;
    	case 'Apr':
    		eMonth='04';
     	   break;
    	case 'May':
    		eMonth='05';
     	   break;
    	case 'Jun':
    		eMonth='06';
        break;
    	case 'Jul':
    		eMonth='07';
     	   break;
    	case 'Aug':
    		eMonth='08';
     	   break;
    	case 'Sep':
    		eMonth='09';
     	   break;
    	case 'Oct':
    		eMonth='10';
     	   break;
    	case 'Nov':
    		eMonth='11';
     	   break;
    	case 'Dec':
    		eMonth='12';
     	   break;
    	default:
    		alert("오류");
    		break;
      }
      endDay =  
      eYear.concat(eMonth).concat(eDay);
      
      
      /**엔드데이**/
      
      
      if (title !== null && title.length != 0) {
        $this.$calendarObj.fullCalendar('renderEvent', {
          title: title,
          start: start,
          end: end,
          allDay: false,
          className: categoryClass
        }, true);
        
        
        /*요기에 인서트 하기*/
        var insertData ={
        	"memberId" : memberId,
        	"title" : title,
        	"startDay" : startDay,
        	"endDay" : endDay,
        	"bgType" : categoryClass
        };
        alert(startDay+endDay);
        $.ajax({
        	method : 'POST'
            , url : 'insertcalendar'
            , data :JSON.stringify(insertData)
            , dataType : 'text'
            , contentType : 'application/json; charset=UTF-8'
            , success : function(resp){
            	alert(resp);
            }
        });
        $this.$modal.modal('hide');
        
      } else {
        alert('You have to give a title to your event');
      }
      return false;
    });
    $this.$calendarObj.fullCalendar('unselect');
  },

  /* enable drag*/
  CalendarApp.prototype.enableDrag = function() {
    //init events
    $(this.$event).each(function() {
      // create an Event Object (http://arshaw.com/fullcalendar/docs/event_data/Event_Object/)
      // it doesn't need to have a start or end
      var eventObject = {
        title: $.trim($(this).text()) // use the element's text as the event title
      };
      // store the Event Object in the DOM element so we can get to it later
      $(this).data('eventObject', eventObject);
      // make the event draggable using jQuery UI
      $(this).draggable({
        zIndex: 999,
        revert: true, // will cause the event to go back to its
        revertDuration: 0 //  original position after the drag
      });
    });
  },

  /* Initializing */
  CalendarApp.prototype.init = function() {
    this.enableDrag();
    /*  Initialize the calendar  */
    var date = new Date();
    var d = date.getDate();
    var m = date.getMonth();
    var y = date.getFullYear();
    var form = '';
    var today = new Date($.now());
    
    var defaultEvents = [{
      title: 'Meeting #3',
      start: new Date($.now() + 506800000),
      className: 'bg-info'
    }, {
      title: 'Submission #1',
      start: today,
      end: today,
      className: 'bg-danger'
    }];

    var $this = this;
    $this.$calendarObj = $this.$calendar.fullCalendar({
      slotDuration: '00:15:00',
      /* If we want to split day time each 15minutes */
      minTime: '08:00:00',
      maxTime: '19:00:00',
      defaultView: 'month',
      handleWindowResize: true,
      header: {
        left: 'prev,next today',
        center: 'title',
        right: 'month,agendaWeek,agendaDay'
      },
      events: init2, init3,
      locale: 'ko',
      editable: true,
      droppable: true, // this allows things to be dropped onto the calendar !!!
      eventLimit: true, // allow "more" link when too many events
      selectable: true,
      drop: function(date) { $this.onDrop($(this), date); },
      select: function(start, end, allDay) { $this.onSelect(start, end, allDay); },
      eventClick: function(calEvent, jsEvent, view) { $this.onEventClick(calEvent, jsEvent, view); }
    });

    //on new event
    this.$saveCategoryBtn.on('click', function() {
      var categoryName = $this.$categoryForm.find("input[name='category-name']").val();
      var categoryColor = $this.$categoryForm.find("select[name='category-color']").val();
      if (categoryName !== null && categoryName.length != 0) {
        $this.$extEvents.append('<div class="calendar-events m-b-20" data-class="bg-' + categoryColor + '" style="position: relative;"><i class="fa fa-circle text-' + categoryColor + ' m-r-10" ></i>' + categoryName + '</div>')
        $this.enableDrag();
      }
    });
  },

  //init CalendarApp
  $.CalendarApp = new CalendarApp, $.CalendarApp.Constructor = CalendarApp;
}(window.jQuery),

//initializing CalendarApp
$(window).on('load', function() {
  init2(); init3();
  $.CalendarApp.init()
});