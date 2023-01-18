package com.example.footballcatalog.models;

import jakarta.persistence.*;
import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.Size;
import lombok.Data;

import java.sql.Date;

@Data
@Entity
@Table(name = "footballer")
public class Footballer {

    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @NotBlank(message = "Имя не должно быть пустым")
    @Size(min = 2, max = 100, message = "Имя должно быть от 2 до 100 символов длиной")
    @Column(name = "name")
    private String name;

    @NotBlank(message = "Фамилия не должна быть пустой")
    @Size(min = 2, max = 100, message = "Фамилия должна быть от 2 до 100 символов длиной")
    @Column(name = "surname")
    private String surname;

    @Column(name = "gender")
    private String gender;

    @Column(name = "birthdate")
    private Date birthdate;

    @NotBlank(message = "Команда не должна быть пустой")
    @Column(name = "team")
    private String team;

    @Column(name = "country")
    private String country;

    @Override
    public String toString() {
        return String.format("%s %s %s %s %s %s", name, surname, gender, birthdate, team, country);
    }
}