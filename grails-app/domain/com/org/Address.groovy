package com.org

class Address {
    String  line1
    String  line2
    Integer pincode
    City    city
    static constraints = {
    }
    String toString(){
        return "$city.name "
    }
}
