package com.codecoool.rental.model;

import javax.persistence.*;
import java.util.Date;

@Entity
@NamedQuery(name = "Reservation.getReservationsForRentalInPeriod",
        query = "SELECT reservation FROM Reservation reservation " +
                "WHERE reservation.rental.id = ?1 " +
                "AND ((reservation.startDate BETWEEN ?2 AND ?3)" +
                "OR (reservation.endDate BETWEEN ?2 AND ?3)" +
                "OR (?2 BETWEEN reservation.startDate AND reservation.endDate)" +
                "OR (?3 BETWEEN reservation.startDate AND reservation.endDate))")
@Table(name = "reservation")
public class Reservation {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(name = "number_of_people")
    private Integer numberOfPeople;

    @Column(name = "start_date")
    private Date startDate;

    @Column(name = "end_date")
    private Date endDate;

    @Column(name = "reservation_type")
    @Enumerated(EnumType.STRING)
    private ReservationType reservationType;

    @ManyToOne
    private User user;

    @ManyToOne(cascade = CascadeType.ALL)
    private Rental rental;

    public Reservation() {
    }

    public Reservation(Integer numberOfPeople, Date startDate, Date endDate, ReservationType reservationType, User user, Rental rental) {
        this.numberOfPeople = numberOfPeople;
        this.startDate = startDate;
        this.endDate = endDate;
        this.reservationType = reservationType;
        this.user = user;
        this.rental = rental;
    }

    public Integer getId() {
        return id;
    }

    public Integer getNumberOfPeople() {
        return numberOfPeople;
    }

    public void setNumberOfPeople(Integer numberOfPeople) {
        this.numberOfPeople = numberOfPeople;
    }

    public Date getStartDate() {
        return startDate;
    }

    public void setStartDate(Date startDate) {
        this.startDate = startDate;
    }

    public Date getEndDate() {
        return endDate;
    }

    public void setEndDate(Date endDate) {
        this.endDate = endDate;
    }

    public ReservationType getReservationType() {
        return reservationType;
    }

    public void setReservationType(ReservationType reservationType) {
        this.reservationType = reservationType;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Rental getRental() {
        return rental;
    }

    public void setRental(Rental rental) {
        this.rental = rental;
    }

    @Override
    public String toString() {
        return "Reservation{" +
                "startDate=" + startDate +
                ", endDate=" + endDate +
                ", numOfPeople=" + numberOfPeople +
                ", resType=" + reservationType +
                ", userId=" + user.getId() +
                ", rentalId=" + rental.getId() +
                '}';
    }
}
