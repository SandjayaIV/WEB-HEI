package hei.devweb.javacinee.managers;

import hei.devweb.javacinee.dao.FilmDao;
import hei.devweb.javacinee.dao.GenreDao;
import hei.devweb.javacinee.dao.impl.FilmDaoImpl;
import hei.devweb.javacinee.dao.impl.GenreDaoImpl;
import hei.devweb.javacinee.entities.Film;
import hei.devweb.javacinee.entities.Genre;

import java.util.List;

public class FilmService {
	
	private static class FilmLibraryHolder {
		private final static FilmService instance = new FilmService();
	}
	
	public static FilmService getInstance() {
		return FilmLibraryHolder.instance;
	}
	
	private FilmDao filmDao = new FilmDaoImpl();
	private GenreDao genreDao = new GenreDaoImpl();

	private FilmService() {
	}

	public List<Film> listFilms() {
		return filmDao.listFilms();
	}

	public Film getFilm(Integer id) {
		return filmDao.getFilm(id);
	}

	public Film getRandomFilm() {
		return filmDao.getRandomFilm();
	}

	public Film addFilm(Film film) {
		if(film == null) {
			throw new IllegalArgumentException("The film can not be null.");
		}
		if (film.getTitle() == null || "".equals(film.getTitle())) {
			throw new IllegalArgumentException("A film must have a title.");
		}
		if (film.getDirector() == null || "".equals(film.getDirector())) {
			throw new IllegalArgumentException("A film must have a director.");
		}
		if (film.getReleaseDate() == null) {
			throw new IllegalArgumentException("A film must have a release date.");
		}
		if (film.getGenre() == null) {
			throw new IllegalArgumentException("A film must have a genre.");
		}
		if (film.getDuration() == null) {
			throw new IllegalArgumentException("A film must have a duration.");
		}

		return filmDao.addFilm(film);
	}

	public List<Genre> listGenres() {
		return genreDao.listGenres();
	}

	public Genre getGenre(Integer id) {
		return genreDao.getGenre(id);
	}

	public void addGenre(String name) {
		if (name == null || "".equals(name)) {
			throw new IllegalArgumentException("A genre must have a name.");
		}
		genreDao.addGenre(name);
	}
}
