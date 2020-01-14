package hei.devweb.arena.services;

import hei.devweb.arena.daos.FighterDao;
import hei.devweb.arena.pojos.Fight;
import hei.devweb.arena.pojos.Fighter;

import java.util.List;

public class HallOfFameService {

    private static class HallOfFameServiceHolder {
        private final static HallOfFameService instance = new HallOfFameService();
    }

    public static HallOfFameService getInstance() {
        return HallOfFameServiceHolder.instance;
    }

    private HallOfFameService() {
    }

    private FighterDao fighterDao = new FighterDao();

    public Integer countFighters() {
        return fighterDao.countFighters();
    }

    public List<Fighter> listFighters() {
        return fighterDao.listFighters();
    }

    public Fighter getFighter(Integer fighterId) {
        if (fighterId == null) {
            throw new IllegalArgumentException("Fighter id is mandatory.");
        }
        return fighterDao.getFighter(fighterId);
    }

    public void likeFighter(Integer fighterId) {
        if (fighterId == null) {
            throw new IllegalArgumentException("Fighter id is mandatory.");
        }
        fighterDao.likeFighter(fighterId);
    }

    public Fighter addFight(Fight fight) {
        if (fight == null) {
            throw new IllegalArgumentException("Fight is null.");
        }
        if (fight.getFighterName() == null || "".equals(fight.getFighterName())) {
            throw new IllegalArgumentException("Fighter name is null.");
        }
        if (fight.getFighterJob() == null || "".equals(fight.getFighterJob())) {
            throw new IllegalArgumentException("Fighter job is null.");
        }
        if (fight.getStatus() == null) {
            throw new IllegalArgumentException("Fight status is null.");
        }
        if (fighterDao.exists(fight.getFighterName())) {
            return fighterDao.updateFighter(fight);
        } else {
            return fighterDao.addFighter(fight);
        }
    }
}
