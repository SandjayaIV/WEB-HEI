package hei.devweb.javacinee.dao;

import java.util.List;

import hei.devweb.javacinee.entities.Film;

public interface FilmDao {
	List<Film> listFilms();

	Film getFilm(Integer id);

	Film getRandomFilm();

	Film addFilm(Film film);
}
