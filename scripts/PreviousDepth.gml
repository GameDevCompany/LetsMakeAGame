EncodeSegment();
ClearLevel();
selectedDepth--;
if(selectedDepth < 0) {
  selectedDepth = 2;
}
SelectLevel(selectedLevel,selectedDepth);
