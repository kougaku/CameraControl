CameraControl control;

void setup() {
  size(800, 600, P3D);
  control = new CameraControl(this);
}

void draw() {
  background(100);

  // box and floor
  perspective();
  translate( width/2, height/2, 0 );
  box(100);
  for (int x=-500; x<=500; x+=50) {
    line( x, 100, -500, x, 100, 500 );
  }
  for (int z=-500; z<=500; z+=50) {
    line( -500, 100, z, 500, 100, z );
  }

  // guide
  pushMatrix();
  ortho();
  resetMatrix();
  translate(-width/2.0, -height/2.0);
  hint(DISABLE_DEPTH_TEST);
  text("[UP],[DOWN] : Tilt up/down", 10, 20);
  text("[LEFT],[RIGHT] : Pan left/right", 10, 35);
  text("[w],[s] : Move forward/backward", 10, 50);
  text("[a],[d] : Move left/right", 10, 65 );
  text("[e],[c] : Move up/down", 10, 80 );
  hint(ENABLE_DEPTH_TEST);
  popMatrix();
}
