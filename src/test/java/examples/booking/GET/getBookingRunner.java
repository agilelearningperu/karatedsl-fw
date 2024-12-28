package examples.booking.GET;

import com.intuit.karate.junit5.Karate;

public class getBookingRunner {
    @Karate.Test
    Karate testGetBooking() {
        return Karate.run("get-booking").tags("@caso2").relativeTo(getClass());
    }
}
