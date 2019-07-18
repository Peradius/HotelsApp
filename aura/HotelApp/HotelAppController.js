({
	handlePageTraverseEvent : function(component, event, helper) {
		var pageOne = event.getParam("pageOne");
		var pageTwo = event.getParam("pageTwo");
		var pageThree = event.getParam("pageThree");
		var pageFour = event.getParam("pageFour");

		component.set("v.pageOneOpened", pageOne);
		component.set("v.pageTwoOpened", pageTwo);
		component.set("v.pageThreeOpened", pageThree);
		component.set("v.pageFourOpened", pageFour);
	},
	
	handleHotelDataEvent : function(component, event, helper) {
		var hotel = event.getParam("hotel");
		component.set("v.hotel", hotel);
	},

	handleRoomDataEvent : function(component, event, helper) {
		var room = event.getParam("room");
		component.set("v.room", room);
	},

	handleGuestDataEvent : function(component, event, helper) {
		var guest = event.getParam("guest");
		component.set("v.guest", guest);
	},

	handleReservationDataEvent :  function(component, event, helper){
        var checkIn = event.getParam("checkIn");
        var checkOut = event.getParam("checkOut");
        component.set("v.checkIn", checkIn);
        component.set("v.checkOut", checkOut);
    },
})