package examples.booking.DELETE;

import com.intuit.karate.junit5.Karate;

public class deleteBookingRunner {
    @Karate.Test
    Karate testDeleteBooking() {
        return Karate.run("delete-booking").relativeTo(getClass());
    }
}
