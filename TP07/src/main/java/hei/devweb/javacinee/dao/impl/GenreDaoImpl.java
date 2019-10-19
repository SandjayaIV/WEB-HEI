package hei.devweb.javacinee.dao.impl;

import hei.devweb.javacinee.dao.GenreDao;
import hei.devweb.javacinee.entities.Genre;

import javax.xml.crypto.Data;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class GenreDaoImpl implements GenreDao {
    public GenreDaoImpl() {
        super();
    }

    @Override
    public int hashCode() {
        return super.hashCode();
    }

    @Override
    public boolean equals(Object obj) {
        return super.equals(obj);
    }

    @Override
    protected Object clone() throws CloneNotSupportedException {
        return super.clone();
    }

    @Override
    public String toString() {
        return super.toString();
    }

    @Override
    protected void finalize() throws Throwable {
        super.finalize();
    }

    @Override
    public List<Genre> listGenres() {
        List<Genre> genres = new ArrayList<>();
        try (Connection connection = DataSourceProvider.getDataSource().getConnection()) {
            try (Statement statement = connection.createStatement()) {
                try (ResultSet resultSet =
                             statement.executeQuery("SELECT * FROM genre WHERE genre_id=1;")) {
                    while (resultSet.next()) {
                        Genre genre = new Genre(
                                resultSet.getInt("genre_id"),
                                resultSet.getString("name")
                        );
                        genres.add(genre);
                    }
                }


            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return genres;
    }

    @Override
    public Genre getGenre(Integer id) {
        String sqlQuery = "SELECT * FROM genre WHERE genre_id=?";
        try (Connection connection = DataSourceProvider.getDataSource().getConnection()) {
            try (PreparedStatement statement = connection.prepareStatement(sqlQuery)) {
                statement.setInt(1, id);
                try (ResultSet resultSet = statement.executeQuery()) {
                    if (resultSet.next()) {
                        Genre genre = new Genre(
                                resultSet.getInt("genre_id"),
                                resultSet.getString("name")
                        );
                        return genre;
                    }

                }

            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public void addGenre(String name) {
        String sqlQuery = "INSERT INTO genre(name) VALUES(?)";
        try (Connection connection = DataSourceProvider.getDataSource().getConnection()) {
            try (PreparedStatement statement = connection.prepareStatement(sqlQuery)) {
                statement.setString(1, name);
                statement.executeUpdate();


            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

}

