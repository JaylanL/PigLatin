public void setup() 
{
String[] lines = {"beast","dough","happy","question","star","three","eagle","try"};
  System.out.println("there are " + lines.length + " lines");
  for (int i = 0 ; i < lines.length; i++) 
  {
    System.out.println(pigLatin(lines[i]));
  }
}
public int findFirstVowel(String sWord)
//precondition: sWord is a valid String of length greater than 0.
//postcondition: returns the position of the first vowel in ssWord.  If there are no vowels, returns -1
{ if(sWord.length()>0){
  for(int i=0;i<sWord.length();i++){
    if(sWord.substring(i,i+1).equals("a")||sWord.substring(i,i+1).equals("e")
    ||sWord.substring(i,i+1).equals("i")||sWord.substring(i,i+1).equals("o")
    ||sWord.substring(i,i+1).equals("u")){
      return -2;
    }
  } 
} return 0;
}

public int findQu(String sWord){
  if(sWord.length()>1){
    if(sWord.substring(0,2).equals("qu")){
      return -1; 
    }
  } return 0;
}

public int findVowel(String sWord){
  int check=0;
  for(int i=1;i<sWord.length();i++){
    if(sWord.substring(i).equals("a")||sWord.substring(i).equals("e")
    ||sWord.substring(i).equals("i")||sWord.substring(i).equals("o")
    ||sWord.substring(i).equals("u")){
      check=i;
      return check;
      break;
    }
  }
}
public String pigLatin(String sWord)
//precondition: ssWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{
    if(findFirstVowel(sWord)==-1){
     return sWord+"way";
    }
    else if (findQu(sWord) == -1)
  {
    return sWord.substring(2,sWord.length())+"qu"+"ay";
  }
  else
  {
    return sWord + "ay";
  }
  }
