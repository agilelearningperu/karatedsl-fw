package examples.booking.PATCH;

import com.intuit.karate.junit5.Karate;

public class patchBookingRunner {
    @Karate.Test
    Karate testPatchBooking() {
        return Karate.run("partialUpdate-booking").relativeTo(getClass());
    }

}
