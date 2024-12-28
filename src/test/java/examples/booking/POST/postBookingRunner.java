package examples.booking.POST;

import com.intuit.karate.junit5.Karate;

public class postBookingRunner {
    @Karate.Test
    Karate testPostBooking() {
        return Karate.run("create-booking").tags("@caso4").relativeTo(getClass());
    }
}
