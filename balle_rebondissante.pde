//Test de balle rebondissante (horizontal fixe)
int x = 100; //valeur de "x"
int dx = 1; // valeur de "dx"

void setup() {//initialisation du programme
  size(640,480);// dimension d'écran(largeur, hauteur)
}

void draw() { //commande: dessine à l'infini ceci()  { paramètres du dessin }
  background(#79E5FF); // un arrière plan(qui contient un code de couleur hexadécimal (voir: "selecteur de couleurs" dans l'onglet 'outils' de Processing).
  fill(#FF960D); //remplir le cercle(code: #FF960D)
  ellipse( x, 100, 50, 50); // création d'une ellipse(postion X, position Y, diamètre longitude, diamètre méridien), le cercle ira en direction positive de "x" à l'infini
                          
  x = x + dx; // je détermine que "x" équivaut à lui-même, plus la variable "dx". autrement dit: 100=100+1 , dans ce cas-ci(voir les variables du haut).
  
  if(x + 25 > width || x-25 < 0 ) { // si( la variable "x" + 25 pixels est plus grande que la valeur  
                                   //totale de la largeur d'écran(width) ou (||) que la 
                                  //variable "x"  - 25 pixels (mur gauche) est plus petite que la valeur de 0 pixels 
                                  // {alors la variable "dx" equivaut à elle-même, multiplié par -1
  dx = dx * -1;
  }
}
 
