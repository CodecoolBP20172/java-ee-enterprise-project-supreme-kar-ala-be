package com.codecoool.rental.model;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "reservation")
@NamedQueries({
    @NamedQuery(name = "getReservationsByUserId",
                query = "SELECT reservation FROM Reservation reservation " +
                        "WHERE reservation.user.id = :userId " +
                        "ORDER BY reservation.startDate")
})
public class Reservation {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(name = "number_of_people")
    private Integer numberOfPeople;

    @Column(name = "start_date", nullable = false)
    private Date startDate;

    @Column(name = "end_date", nullable = false)
    private Date endDate;

    @ManyToOne
    private User user;

    @ManyToOne
    private Rental rental;

    public Reservation() {
    }

    public Reservation(Integer numberOfPeople, Date startDate, Date endDate, User user, Rental rental) {
        this.numberOfPeople = numberOfPeople;
        this.startDate = startDate;
        this.endDate = endDate;
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
