package hei.devweb.arena.pojos;

public class Fight {
    public enum Status {
        VICTORY, DEFEAT
    }

    private String fighterName;
    private String fighterJob;
    private Status status;

    public Fight(String fighterName, String fighterJob, Status status) {
        this.fighterName = fighterName;
        this.fighterJob = fighterJob;
        this.status = status;
    }

    public String getFighterJob() {
        return fighterJob;
    }

    public String getFighterName() {
        return fighterName;
    }

    public Status getStatus() {
        return status;
    }
}
