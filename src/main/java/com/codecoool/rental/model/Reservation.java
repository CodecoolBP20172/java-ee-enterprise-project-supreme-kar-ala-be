package com.codecoool.rental.model;

import org.eclipse.jetty.util.annotation.Name;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "reservation")
@NamedQueries({
        @NamedQuery(name = "getReservationsByUserId",
                query = "SELECT reservation FROM Reservation reservation " +
                        "WHERE reservation.user.id = :userId " +
                        "ORDER BY reservation.reservationPeriod.startDate"),

    @NamedQuery(name = "getNumOfReservationsForRentalInPeriod",
                query = "SELECT reservation FROM Reservation reservation JOIN ReservationPeriod reservationPeriod " +
                        "ON reservation.reservationPeriod.id = reservationPeriod.id " +
                        "WHERE reservation.rental.id = :rentalId " +
                        "AND ((reservationPeriod.startDate BETWEEN :startDate AND :endDate)" +
                        "OR (reservationPeriod.endDate BETWEEN :startDate AND :endDate)" +
                        "OR (:startDate BETWEEN reservationPeriod.startDate AND reservationPeriod.endDate)" +
                        "OR (:endDate BETWEEN reservationPeriod.startDate AND reservationPeriod.endDate))")
})

public class Reservation {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(name = "number_of_people")
    private Integer numberOfPeople;

    @OneToOne(cascade = CascadeType.ALL)
    private ReservationPeriod reservationPeriod;

    @ManyToOne
    private User user;

    @ManyToOne(cascade = CascadeType.ALL)
    private Rental rental;

    public Reservation() {
    }

    public Reservation(ReservationPeriod reservationPeriod, Rental rental) {
        this.reservationPeriod = reservationPeriod;
    }

    public Reservation(Integer numberOfPeople, ReservationPeriod reservationPeriod, User user, Rental rental) {
        this.numberOfPeople = numberOfPeople;
        this.reservationPeriod = reservationPeriod;
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

    public ReservationPeriod getReservationPeriod() {
        return reservationPeriod;
    }

    public void setReservationPeriod(ReservationPeriod reservationPeriod) {
        this.reservationPeriod = reservationPeriod;
    }

    @Override
    public String toString() {
        return "Reservation{" +
                "id=" + id +
                ", numberOfPeople=" + numberOfPeople +
                ", user=" + user +
                ", rental=" + rental +
                '}';
    }
}
