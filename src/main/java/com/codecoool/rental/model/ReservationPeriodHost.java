package com.codecoool.rental.model;

import javax.persistence.DiscriminatorValue;
import javax.persistence.Entity;
import java.util.Date;

@Entity
@DiscriminatorValue("reservation_period_host")
public class ReservationPeriodHost extends ReservationPeriod{

    public ReservationPeriodHost() {
    }

    public ReservationPeriodHost(Date startDate, Date endDate) {
        super(startDate, endDate);
    }
}
