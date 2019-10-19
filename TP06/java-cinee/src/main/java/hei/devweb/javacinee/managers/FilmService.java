package hei.devweb.javacinee.managers;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

import hei.devweb.javacinee.entities.Film;
import hei.devweb.javacinee.entities.Genre;

public class FilmService {
	
	private static class FilmServiceHolder {
		private final static FilmService instance = new FilmService();
	}
	
	public static FilmService getInstance() {
		return FilmServiceHolder.instance;
	}
	
	private TreeMap<Integer, Film> filmsList;

	private Map<Integer, Genre> genresList;

	

	private FilmService() {
		this.initialize();
	}

	public List<Film> listFilms() {
		return new ArrayList<>(filmsList.values());
	}

	public List<Genre> listGenres() {
		return new ArrayList<>(genresList.values());
	}

	public Film getFilm(Integer id) {
		return filmsList.get(id);
	}

	public Genre getGenre(Integer id) {
		return genresList.get(id);
	}

	public Film addFilm(Film film) {
		Integer id = filmsList.lastKey() + 1;
		film.setId(id);
		filmsList.put(id, film);
		return film;
	}

	private void initialize() {
		genresList = new HashMap<>();
		genresList.put(1, new Genre(1, "Drama"));
		genresList.put(2, new Genre(2, "Science fiction"));
		genresList.put(3, new Genre(3, "Horror"));
		genresList.put(4, new Genre(4, "Comedy"));
		genresList.put(5, new Genre(5, "Thriller"));

		filmsList = new TreeMap<>();
		filmsList.put(1, new Film(1, "Blade Runner 2049", LocalDate.of(2017, 10, 4), genresList.get(2), 163, "Denis Villeneuve",
				"A young blade runner's discovery of a long-buried secret leads him to track down former blade runner Rick Deckard, who's been missing for thirty years."));
		filmsList.put(2, new Film(2, "It", LocalDate.of(2017, 9, 20), genresList.get(3), 135, "Andy Muschietti",
				"A group of bullied kids band together when a shapeshifting demon, taking the appearance of a clown, begins hunting children."));
		filmsList.put(3, new Film(3, "Le Sens de la fête", LocalDate.of(2017, 10, 4), genresList.get(4), 117, "Olivier Nakache",
				"A hectic wedding party held in an 17th century French palace comes together with the help of the behind-the-scenes staff."));
		filmsList.put(4, new Film(4, "Mother!", LocalDate.of(2017, 9, 13), genresList.get(1), 121, "Darren Aronofsky",
				"A couple's relationship is tested when uninvited guests arrive at their home, disrupting their tranquil existence."));
		filmsList.put(5, new Film(5, "Good Time", LocalDate.of(2017, 9, 13), genresList.get(1), 101, "Ben and Joshua Safdie",
				"After a heist goes awry, a bank robber tries to free his brother from Rikers Island, all in one night."));
	}
}
