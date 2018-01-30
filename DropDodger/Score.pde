class Score
{
  //used to keep the score and have a copy to display when you lose
  int time;
  int scoreSave;

  //strings that go before the dynamic scores
  String timeLayOut = "Score: ";
  String lastScore = "Final Score: ";

  //messages for different scores
  String scoreBad = "pathetic, you need to practice!";
  String scoreOk = "Meh, I've seen better";
  String scoreGood = "That'll do pig, that'll do";
  String scoreGreat = "ITS OVER 9000!!!!!!!!!!!!!!!!!!";
  String scorePreview = "The higher your score, the less I insult you!";


  Score(int currTime)
  {
    time = currTime;
  }

  void scoreGo()
  {

    textFont(f, 48);
    fill(0);
    text(timeLayOut + (time++), width - width / 5, 50);

    scoreSave = time;
  }

  void scoreReset()
  {
    time = 0;
  }

  void pause()
  {
    time = time; 
    textFont(f, 48);
    fill(255);
    text(timeLayOut + time, width - width / 5, 50);
    textFont(d, 90);
    text("Game Paused", width / 2, height / 2);
  }

  void showScore()
  {
    textAlign(CENTER);

    if (scoreSave < 500)
    {
      textFont(d, 60);
      text(lastScore + scoreSave, width / 2, height / 2);
      textFont(d, 50);
      text(scoreBad, width / 2, height / 1.7 );
    } else if (scoreSave >= 500 && scoreSave < 1500)
    {
      textFont(d, 60);
      text(lastScore + scoreSave, width / 2, height / 2);
      textFont(d, 50);
      text(scoreOk, width / 2, height / 1.7);
    } else if (scoreSave >= 1500 && scoreSave < 9000)
    {
      textFont(d, 60);
      text(lastScore + scoreSave, width / 2, height / 2);
      textFont(d, 50);
      text(scoreGood, width / 2, height / 1.7);
    } else if (scoreSave > 9000)
    {
      textFont(d, 60);
      text(lastScore + scoreSave, width / 2, height / 2);
      textFont(d, 50);
      text(scoreGreat, width / 2, height / 1.7);
    }
  }

  void preview()
  {
    textFont(d, 40);
    text(scorePreview, width / 2, height / 1.7);
  }
}