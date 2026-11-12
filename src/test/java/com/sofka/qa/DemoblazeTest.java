
package com.sofka.qa;

import com.intuit.karate.junit5.Karate;

class DemoblazeTest {

    @Karate.Test
    Karate testDemoblaze() {
        return Karate.run("demoblaze").relativeTo(getClass());
    }
}
