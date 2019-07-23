@isTest
private class HotelDropdownListControllerTest {
    
    @isTest static void getHotelsTestAll() {
        List<Hotel__c> hotels = new List<Hotel__c>();

        Hotel__c newHotel = new Hotel__c(
            Name = 'Hotel Test', 
            Address__c = 'Testowa 1',
            City__c = 'Testowo',
            Rating__c = 2
        );
        hotels.add(newHotel);

        newHotel = new Hotel__c(
            Name = 'Hotel Test 2', 
            Address__c = 'Testowa 2',
            City__c = 'Testowo',
            Rating__c = 1
        );

        hotels.add(newHotel);

        newHotel = new Hotel__c(
            Name = 'Hotel Test 3', 
            Address__c = 'Testowa 3',
            City__c = 'Testowiron',
            Rating__c = 1
        );

        hotels.add(newHotel);
        insert hotels;

        Test.startTest();

        List<Hotel__c> hotelsTest = HotelDropdownListController.getHotels(2, 'Testowo');

        Test.stopTest();

        System.assertEquals(1, hotelsTest.size());
    }

    @isTest static void getHotelsTestNoRating() {
        List<Hotel__c> hotels = new List<Hotel__c>();

        Hotel__c newHotel = new Hotel__c(
            Name = 'Hotel Test', 
            Address__c = 'Testowa 1',
            City__c = 'Testowo',
            Rating__c = 2
        );
        hotels.add(newHotel);

        newHotel = new Hotel__c(
            Name = 'Hotel Test 2', 
            Address__c = 'Testowa 2',
            City__c = 'Testowo',
            Rating__c = 1
        );

        hotels.add(newHotel);

        newHotel = new Hotel__c(
            Name = 'Hotel Test 3', 
            Address__c = 'Testowa 3',
            City__c = 'Testowiron',
            Rating__c = 1
        );

        hotels.add(newHotel);
        insert hotels;

        Test.startTest();

        List<Hotel__c> hotelsTest = HotelDropdownListController.getHotels(null, 'Testowo');

        Test.stopTest();

        System.assertEquals(2, hotelsTest.size());
    }

    @isTest static void getHotelsTestNoCity() {
        List<Hotel__c> hotels = new List<Hotel__c>();

        Hotel__c newHotel = new Hotel__c(
            Name = 'Hotel Test', 
            Address__c = 'Testowa 1',
            City__c = 'Testowo',
            Rating__c = 2
        );
        hotels.add(newHotel);

        newHotel = new Hotel__c(
            Name = 'Hotel Test 2', 
            Address__c = 'Testowa 2',
            City__c = 'Testowo',
            Rating__c = 1
        );

        hotels.add(newHotel);

        newHotel = new Hotel__c(
            Name = 'Hotel Test 3', 
            Address__c = 'Testowa 3',
            City__c = 'Testowiron',
            Rating__c = 1
        );

        hotels.add(newHotel);
        insert hotels;

        Test.startTest();

        List<Hotel__c> hotelsTest = HotelDropdownListController.getHotels(2, null);

        Test.stopTest();

        System.assertEquals(1, hotelsTest.size());
    }

    @isTest static void getHotelsTestNothing() {
        List<Hotel__c> hotels = new List<Hotel__c>();

        Hotel__c newHotel = new Hotel__c(
            Name = 'Hotel Test', 
            Address__c = 'Testowa 1',
            City__c = 'Testowo',
            Rating__c = 2
        );
        hotels.add(newHotel);

        newHotel = new Hotel__c(
            Name = 'Hotel Test 2', 
            Address__c = 'Testowa 2',
            City__c = 'Testowo',
            Rating__c = 1
        );

        hotels.add(newHotel);

        newHotel = new Hotel__c(
            Name = 'Hotel Test 3', 
            Address__c = 'Testowa 3',
            City__c = 'Testowiron',
            Rating__c = 1
        );

        hotels.add(newHotel);
        insert hotels;

        Test.startTest();

        List<Hotel__c> hotelsTest = HotelDropdownListController.getHotels(null, null);

        Test.stopTest();

        System.assertEquals(3, hotelsTest.size());
    }
}