package hei.devweb.javacinee.dao.impl;

import hei.devweb.javacinee.dao.FilmDao;
import hei.devweb.javacinee.entities.Film;
import hei.devweb.javacinee.entities.Genre;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class FilmDaoImpl implements FilmDao {
    @Override
    public List<Film> listFilms() {
        String sqlQuery = "SELECT * FROM film " +
                " JOIN genre ON film.genre_id = genre.genre_id" +
                " ORDER BY title";
        List<Film> films = new ArrayList<>();
        try(Connection connection = DataSourceProvider.getDataSource().getConnection()) {
            try (Statement statement = connection.createStatement()) {
                try(ResultSet resultSet = statement.executeQuery(sqlQuery)) {
                    while (resultSet.next()) {
                        Film film = mapFilm(resultSet);
                        films.add(film);
                    }
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return films;
    }

    private Film mapFilm(ResultSet resultSet) throws SQLException {
        Genre genre = new Genre(
                resultSet.getInt("genre_id"),
                resultSet.getString("name")
        );
        return new Film(
            resultSet.getInt("film_id"),
                resultSet.getString("title"),
                resultSet.getDate("release_date").toLocalDate(),
                genre,
                resultSet.getInt("duration"),
                resultSet.getString("director"),
                resultSet.getString("summary")
        );
    }

    @Override
    public Film getFilm(Integer id) {
        String sqlQuery = "SELECT * FROM film  " +
                " JOIN genre ON film.genre_id = genre.genre_id " +
                " WHERE film_id=?";
        try(Connection connection = DataSourceProvider.getDataSource().getConnection()) {
            try (PreparedStatement statement = connection.prepareStatement(sqlQuery)) {
                statement.setInt(1, id);
                try (ResultSet resultSet = statement.executeQuery()) {
                    if (resultSet.next()) {
                        return mapFilm(resultSet);
                    }
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public Film getRandomFilm() {
        String sqlQuery = "SELECT * FROM film \n" +
                "\tJOIN genre ON film.genre_id = genre.genre_id\n" +
                "\tORDER BY RAND()\n" +
                "    LIMIT 1;";
        try(Connection connection = DataSourceProvider.getDataSource().getConnection()) {
            try (Statement statement = connection.createStatement()) {
                try(ResultSet resultSet = statement.executeQuery(sqlQuery)) {
                    if (resultSet.next()) {
                        return mapFilm(resultSet);
                    }
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public Film addFilm(Film film) {
        String sqlQuery = "INSERT INTO film (title, release_date, genre_id, duration, director, summary) \n" +
                "    VALUES (?, ?, ?, ?, ?, ?);";
        try(Connection connection = DataSourceProvider.getDataSource().getConnection()) {
            try (PreparedStatement statement = connection.prepareStatement(sqlQuery, Statement.RETURN_GENERATED_KEYS)) {
                statement.setString(1, film.getTitle());
                statement.setDate(2, Date.valueOf(film.getReleaseDate()));
                statement.setInt(3, film.getGenre().getId());
                statement.setInt(4, film.getDuration());
                statement.setString(5, film.getDirector());
                statement.setString(6, film.getSummary());
                statement.executeUpdate();

                try (ResultSet ids = statement.getGeneratedKeys()) {
                    if (ids.next()) {
                        int filmId = ids.getInt("film_id");
                        film.setId(filmId);
                        return film;
                    }
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        throw new RuntimeException("problème à l'exécution de la requête");
    }
}
