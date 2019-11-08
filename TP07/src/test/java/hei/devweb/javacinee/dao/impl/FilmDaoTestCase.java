package hei.devweb.javacinee.dao.impl;

import hei.devweb.javacinee.dao.FilmDao;
import hei.devweb.javacinee.entities.Film;
import hei.devweb.javacinee.entities.Genre;
import org.junit.Before;
import org.junit.Test;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.time.LocalDate;
import java.time.Month;
import java.util.List;

import static org.assertj.core.api.Assertions.assertThat;
import static org.assertj.core.api.Assertions.tuple;

public class FilmDaoTestCase {
	private FilmDao filmDao = new FilmDaoImpl();

	@Before
	public void initDb() throws Exception {
		try (Connection connection = DataSourceProvider.getDataSource().getConnection();
				Statement stmt = connection.createStatement()) {
			stmt.executeUpdate("DELETE FROM film");
			stmt.executeUpdate("DELETE FROM genre");
			stmt.executeUpdate("INSERT INTO `genre`(`genre_id`,`name`) VALUES (1,'Drama')");
			stmt.executeUpdate("INSERT INTO `genre`(`genre_id`,`name`) VALUES (2,'Comedy')");
			stmt.executeUpdate(
					"INSERT INTO `film`(`film_id`,`title`, release_date, genre_id, duration, director, summary) "
							+ "VALUES (1, 'my title 1', '2014-11-26', 1, 120, 'director #1', 'summary')");
			stmt.executeUpdate(
					"INSERT INTO `film`(`film_id`,`title`, release_date, genre_id, duration, director, summary) "
							+ "VALUES (2, 'my title 2', '2014-10-26', 2, 165, 'director #2', 'summary')");
		}
	}

	@Test
	public void shouldListFilm() {
		// WHEN
		List<Film> films = filmDao.listFilms();
		// THEN
		assertThat(films).hasSize(2);
		assertThat(films).extracting(
				Film::getId,
				Film::getTitle,
				Film::getReleaseDate,
				f -> f.getGenre().getId(),
				f -> f.getGenre().getName(),
				Film::getDuration,
				Film::getDirector,
				Film::getSummary).containsOnly(
				tuple(1, "my title 1", LocalDate.of(2014, Month.NOVEMBER, 26), 1, "Drama", 120, "director #1", "summary"),
				tuple(2, "my title 2", LocalDate.of(2014, Month.OCTOBER, 26), 2, "Comedy", 165, "director #2", "summary")
		);
	}

	@Test
	public void shouldGetFilm() {
		// WHEN
		Film film = filmDao.getFilm(1);
		// THEN
		assertThat(film).isNotNull();
		assertThat(film.getId()).isEqualTo(1);
		assertThat(film.getTitle()).isEqualTo("my title 1");
		assertThat(film.getReleaseDate()).isEqualTo(LocalDate.of(2014, Month.NOVEMBER, 26));
		assertThat(film.getGenre().getId()).isEqualTo(1);
		assertThat(film.getGenre().getName()).isEqualTo("Drama");
		assertThat(film.getDuration()).isEqualTo(120);
		assertThat(film.getDirector()).isEqualTo("director #1");
		assertThat(film.getSummary()).isEqualTo("summary");
	}

	@Test
	public void shouldNotGetUnknownFilm() {
		// WHEN
		Film film = filmDao.getFilm(-1);
		// THEN
		assertThat(film).isNull();
	}

	@Test
	public void shouldReturnRandomFilm() {
		// WHEN
		Film film = filmDao.getRandomFilm();
		// THEN
		assertThat(film).isNotNull();
		assertThat(film.getId()).isIn(1, 2);
	}

	@Test
	public void shouldAddFilm() throws Exception {
		// GIVEN
		Film filmToCreate = new Film(null, "My new film", LocalDate.of(2019, Month.OCTOBER, 20),
				new Genre(1, "Drama"), 123, "my new director", "my new summary");
		// WHEN
		Film filmCreated = filmDao.addFilm(filmToCreate);
		// THEN
		try (Connection connection = DataSourceProvider.getDataSource().getConnection();
			 PreparedStatement stmt = connection.prepareStatement("SELECT * FROM film WHERE film_id = ?")) {
			stmt.setInt(1, filmCreated.getId());
			try (ResultSet rs = stmt.executeQuery()) {
				assertThat(rs.next()).isTrue();
				assertThat(rs.getInt("film_id")).isEqualTo(filmCreated.getId());
				assertThat(rs.getString("title")).isEqualTo("My new film");
				assertThat(rs.getDate("release_date").toLocalDate()).isEqualTo(LocalDate.of(2019, Month.OCTOBER, 20));
				assertThat(rs.getInt("genre_id")).isEqualTo(1);
				assertThat(rs.getInt("duration")).isEqualTo(123);
				assertThat(rs.getString("director")).isEqualTo("my new director");
				assertThat(rs.getString("summary")).isEqualTo("my new summary");
				assertThat(rs.next()).isFalse();
			}
		}
	}
}
