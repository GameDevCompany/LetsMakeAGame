switch(event_type) {
  case ev_create:
    InitCharacter();
    break;
  case ev_step:
  switch(event_number) {
      case ev_step_begin:
        BeginUpdateCharacter();
        break;
      case ev_step_normal:
        UpdateCharacter();    
        break;
    }
  case ev_draw:
    switch(event_number) {
      case ev_draw_begin:
       DrawCharacter();
       break;
      case ev_gui:
        DrawCharacterGUI();    
        break;
    }
    break;
}
