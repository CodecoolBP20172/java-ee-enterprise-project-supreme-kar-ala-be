package com.codecoool.rental.model;

import javax.persistence.DiscriminatorValue;
import javax.persistence.Entity;
import java.util.Date;

@Entity
@DiscriminatorValue("reservation_period_guest")
public class ReservationPeriodGuest extends ReservationPeriod {

    public ReservationPeriodGuest() {
    }

    public ReservationPeriodGuest(Date startDate, Date endDate) {
        super(startDate, endDate);
    }
}
