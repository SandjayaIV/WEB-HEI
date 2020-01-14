package hei.devweb.arena.pojos;

public class Fighter {

    private Integer id;
    private String name;
    private String job;
    private Integer fights;
    private Integer victories;
    private Integer defeats;
    private Integer likes;

    public Fighter(Integer id, String name, String job, Integer victories, Integer defeats, Integer likes) {
        this.id = id;
        this.name = name;
        this.job = job;
        this.likes = likes;
        this.fights = victories + defeats;
        this.victories = victories;
        this.defeats = defeats;
    }

    public void incrementerLikes() {
        this.likes++;
    }

    public void addFight(Fight fight) {
        this.job = fight.getFighterJob();
        this.fights++;
        if (Fight.Status.VICTORY.equals(fight.getStatus())) {
            this.victories++;
        } else if (Fight.Status.DEFEAT.equals(fight.getStatus())) {
            this.defeats++;
        }
    }

    public Integer getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getJob() {
        return job;
    }

    public Integer getFights() {
        return fights;
    }

    public Integer getVictories() {
        return victories;
    }

    public Integer getDefeats() {
        return defeats;
    }

    public Integer getLikes() {
        return likes;
    }
}
