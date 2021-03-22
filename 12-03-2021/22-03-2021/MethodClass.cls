public class Demo {
    public String helloworld;
    public static Final string DEFAULTSTRING(); {
        DEFAULTSTRING ="helloworld";
    }
    public demo2 () {
        this(DEFAULTSTRING);
    }
    public demo2 (string string ToDisplay){
    this.helloworld string = String ToDisplay;
    }
    public void printOutput() {
        System.debug('display text:' + helloworld);
    }
    public static void printOutput(){
        System.debug('display from static method');
    }
}