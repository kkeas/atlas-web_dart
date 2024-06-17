int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
  int teamAPoints = calculatePoints(teamA);
  int teamBPoints = calculatePoints(teamB);

  if (teamAPoints > teamBPoints) {
    return 1;
  } else if (teamAPoints < teamBPoints) {
    return 2;
  } else {
    return 0;
  }
}

int calculatePoints(Map<String, int> team) {
  int freeThrows = team['Free throws'] ?? 0;
  int twoPointers = team['2 pointers'] ?? 0;
  int threePointers = team['3 pointers'] ?? 0;

  int totalPoints = freeThrows + (2 * twoPointers) + (3 * threePointers);
  return totalPoints;
}
