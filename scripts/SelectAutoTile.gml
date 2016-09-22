if(!global.inGame) {
  with(LevelEditor) {
    other.image_index = AutoTile(other.x_index,other.y_index,currentLevel);
  }
} else {
  image_index = selectedIndex;
}

