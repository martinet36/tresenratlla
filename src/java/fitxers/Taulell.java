package fitxers;

/**
 *
 * @author Mallol
 */
public class Taulell {
    
    private String celes[][] = {{"","",""},{"","",""},{"","",""}};
    private int num_jugadors;
    private int tirada_jugadors;
    boolean guanyar;
    private int torn;
    
    
    public Taulell() {
        num_jugadors = 0;
        tirada_jugadors = 0;
        guanyar = false;
        torn = 1;
    }
    
    public int retornar_tirada_jugador() {
        return tirada_jugadors;
    }
    
    public void incrementar_tirada_jugador() {
        tirada_jugadors++;
    }
    
    public int retornar_jugadors () {
        return num_jugadors;
    }
    
    public void incrementar_jugadors () {
        num_jugadors++;
    }
    
    public void marcar_cela(int i, int j, String jug) {
        if (comprovar_buit(i,j)) { celes[i][j] = "jug"; }
        else { System.out.println("No pots jugar en aquesta cel·la..."); }
        if(comprovar_guanyar()) { System.out.println("Has guanyat!!!"); }
    }
    
    public boolean comprovar_buit(int i, int j){
        if (celes[i][j].equals("")) { return true; }
        else { return false; }
    }
    
    public boolean comprovar_guanyar(){
        if(celes[0][0].equals("")==false && celes[0][0].equals(celes[1][1]) && celes[1][1].equals(celes[2][2])) { guanyar = true; }
        else if(celes[2][0].equals("")==false && celes[2][0].equals(celes[1][1]) && celes[1][1].equals(celes[0][2])) { guanyar = true; }
        else if(celes[0][0].equals("")==false && celes[0][0].equals(celes[1][0]) && celes[1][0].equals(celes[2][0])) { guanyar = true; }
        else if(celes[0][1].equals("")==false && celes[0][1].equals(celes[1][1]) && celes[1][1].equals(celes[2][1])) { guanyar = true; }
        else if(celes[0][2].equals("")==false && celes[0][2].equals(celes[1][0]) && celes[1][2].equals(celes[2][2])) { guanyar = true; }
        else if(celes[0][0].equals("")==false && celes[0][0].equals(celes[0][1]) && celes[0][1].equals(celes[0][2])) { guanyar = true; }
        else if(celes[1][0].equals("")==false && celes[1][0].equals(celes[1][1]) && celes[1][1].equals(celes[1][2])) { guanyar = true; }
        else if(celes[2][0].equals("")==false && celes[2][0].equals(celes[2][1]) && celes[2][1].equals(celes[2][2])) { guanyar = true; }
        boolean aux = true;
        for (int i = 0 ; i < 3 ; i++) {
            for (int j = 0 ; j < 3 ; j++) {
               if (celes[i][j] == "") {
                   aux = false;
               } 
            }
        }
        if (!guanyar && aux) { guanyar = true; }
        return guanyar;
    }
    
    public String[][] mostrar_taulell(){
        return celes;
    }
    
    public void casella(int a, int b, int numJug){
        if(numJug == 1){
            celes[b][a]="1";
        }
        else{
            celes[b][a]="2";
        }
    }
    
    public String estatCasella(int a, int b){
        return celes[a][b];
    }
    
    public void canvi_torn_jugadors() {
        if (torn == 1) { torn = 2; }
        else { torn = 1; }
    }
    
    public int retornar_torn() {
        return torn;
    }
    
    public String retornar_estat_taulell(){
        
        String estat="";
        
        if(num_jugadors==2 && guanyar){
            estat="Acabat";
        }
        else if(num_jugadors==2 && !guanyar){
            estat="En ello";
        }
        else if(num_jugadors==1){
            estat="Esperant contrincant";
        }
        else if(num_jugadors==0){
           estat="Inicialitzat";
        }
        return estat;
    }
    
}