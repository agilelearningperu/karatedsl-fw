package examples.auth;

import com.intuit.karate.junit5.Karate;

public class CreateTokenRunner {
    @Karate.Test
    Karate testCreateToken() {
        return Karate.run("create-token").relativeTo(getClass());
    }
}
