package com.org

class Address {
    String  line1
    String  line2
    Integer pincode
    State   state
    Country country
    City    city
    static constraints = {
    }
    String toString(){
        return "$city.name , $state.name , $country.name"
    }
}
