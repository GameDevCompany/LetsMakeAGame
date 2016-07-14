if(!grounded && verticalAxis >= 0.9) {
  if(IsGrounded(rootObject)) {
    with(groundObject) {
      instance_destroy();
    }
  }
}
