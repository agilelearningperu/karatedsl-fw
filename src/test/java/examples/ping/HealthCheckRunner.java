package examples.ping;

import com.intuit.karate.junit5.Karate;

public class HealthCheckRunner {
    @Karate.Test
    Karate testUsers() {
        return Karate.run("HealthCheck").relativeTo(getClass());
    }
}
