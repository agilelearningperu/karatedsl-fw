package examples.performance.PUT;

import com.intuit.karate.junit5.Karate;

public class putBookingRunner {
    @Karate.Test
    Karate testPutBooking() {
        return Karate.run("update-booking").relativeTo(getClass());
    }
}
