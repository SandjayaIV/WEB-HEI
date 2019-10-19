package hei.devweb.javacinee.managers;

import java.util.List;

import hei.devweb.javacinee.dao.FilmDao;
import hei.devweb.javacinee.dao.GenreDao;
import hei.devweb.javacinee.dao.impl.GenreDaoImpl;
import hei.devweb.javacinee.dao.mock.impl.FilmDaoMockImpl;
import hei.devweb.javacinee.dao.mock.impl.GenreDaoMockImpl;
import hei.devweb.javacinee.entities.Film;
import hei.devweb.javacinee.entities.Genre;

public class FilmService {
	
	private static class FilmLibraryHolder {
		private final static FilmService instance = new FilmService();
	}
	
	public static FilmService getInstance() {
		return FilmLibraryHolder.instance;
	}
	
	private FilmDao filmDao = new FilmDaoMockImpl();
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
		return filmDao.getFilm(1);
	}

	public Film addFilm(Film film) {
		return filmDao.addFilm(film);
	}

	public List<Genre> listGenres() {
		return genreDao.listGenres();
	}

	public Genre getGenre(Integer id) {
		return genreDao.getGenre(id);
	}

	public void addGenre(String nom) {
		genreDao.addGenre(nom);
	}
}
