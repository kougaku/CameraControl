# CameraControl
Camera Control for Processing

- Very simple to use. 
- You can control camera angle and position by key input.

https://user-images.githubusercontent.com/736387/148641011-2fd2f3fb-b268-4461-baa8-37f13c4652e6.mp4


## How to Use
Add CameraControl.pde to your scketch, then write your code like this.

```scala
CameraControl control; // write this

void setup() {
  size(800, 600, P3D);
  control = new CameraControl(this); // write this
}

void draw() {
  background(100);
  translate(width/2, height/2);
  box(100);
}
```

It is not necessary to write anything for camera control in the draw(), because the key control event is done automatically. 
If you don't like this specification, please comment out line 24 in Camera Control.pde, and call keyControl() method directly in the draw() .
