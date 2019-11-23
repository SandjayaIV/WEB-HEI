package hei.devweb.arena.daos;

import hei.devweb.arena.pojos.Fight;
import hei.devweb.arena.pojos.Fighter;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

public class FighterDao {

    private List<Fighter> fighters;

    public FighterDao() {
        this.initMockHallOfFame();
    }

    public Integer countFighters() {
        return fighters.size();
    }

    public List<Fighter> listFighters() {
        return fighters;
    }

    public Fighter getFighter(Integer fighterId) {
        return fighters.stream().filter(f -> fighterId.equals(f.getId())).findFirst().orElse(null);
    }

    public boolean exists(String fighterName) {
        return fighters.stream().anyMatch(f -> fighterName.equals(f.getName()));
    }

    public void likeFighter(Integer fighterId) {
        fighters.stream().filter(f -> fighterId.equals(f.getId())).forEach(Fighter::incrementerLikes);
    }

    public Fighter addFighter(Fight fight) {
        Integer maxId = fighters.stream().mapToInt(Fighter::getId).max().orElse(0);
        int victories = Fight.Status.VICTORY.equals(fight.getStatus()) ? 1 : 0;
        int defeats = Fight.Status.DEFEAT.equals(fight.getStatus()) ? 1 : 0;
        Fighter createdFighter = new Fighter(maxId + 1, fight.getFighterName(), fight.getFighterJob(), victories, defeats, 0);
        fighters.add(createdFighter);
        return createdFighter;
    }

    public Fighter updateFighter(Fight fight) {
        Fighter fighter = fighters.stream().filter(f -> fight.getFighterName().equals(f.getName())).findFirst().orElseThrow(IllegalArgumentException::new);
        fighter.addFight(fight);
        return fighter;
    }

    private void initMockHallOfFame() {
        fighters = new ArrayList<>();
        fighters.add(new Fighter(1, "Richard Aldana", "Boxer", 10, 2, 53));        
        fighters.add(new Fighter(2, "Brienne of Tarth", "Knight", 8, 3, 87));
        fighters.add(new Fighter(3, "Bob", "Builder", 1, 6, 698));
        fighters.add(new Fighter(4, "Chuck Norris", "Actor", 999, 0, 3));
    }

}
