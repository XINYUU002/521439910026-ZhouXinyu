String[] sentences = new String[23];

void setup() {
size(1000,600);
sentences[0] = "Somewhere I have never traveled";
sentences[1] = "Gladly beyond any experience";
sentences[2] = "You eyes have theri silence"; 
sentences[3] = "In your most frail festure are things which enclose me";
sentences[4] = "Or which I cannot touch because they are too near";
sentences[5] = "Though I have close myself as fingers";
sentences[6] = "You open always petal by petal myself";
sentences[7] = "As spring opens touching skiilfully";
sentences[8] = "Mysteriously her first rose";
sentences[9] = "Or if you weish be to close me";
sentences[10] = "I and my life will shut very beautifully";
sentences[11] = "Suddenly";
sentences[12] = "As when the heart of this flower imagines";
sentences[13] = "The snow carefully every where descending";
sentences[14] = "Flaming flowers that brightly blaze";
sentences[15] = "Swirling clouds in a violet haze";
sentences[16] = "Reflect in Vincent's eyes of china blue";
sentences[17] = "Colors changing hue";
sentences[18] = "Morning fields of amber grain";
sentences[19] = "Weathered faces lined in pain";
sentences[20] = "Are soothed beneath the artist's loving hand";
sentences[21] = "Now I understand";
sentences[22] = "What you tried to say to me";

}

void draw() {
  background(255); 
  fill(0); 
  float y = 10;
  for (int i = 0; i < sentences.length; i ++) {

float w = sentences[i].length()*10;
fill(i+w,i+y,y);
line(y+w, y, w,y);
y = y + 20;

}

}
