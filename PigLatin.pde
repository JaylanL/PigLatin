public void setup()
{
  String lines[] = {"test","rotator","rewriter","nurses run", "Madam, I'm Adam!","A Man! A Plan! A Canal! Panama!"};
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      System.out.println(lines[i] + " IS a palindrome.");
    }
    else
    {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String sWord)
{
  String backwards=onlyLetters(sWord);
  if(backwards.equals(reverse(backwards))){
    return true;
  }else
  return false;
}
public String reverse(String sWord)
{
    String s ="";
  if(sWord.length()>1){
  for(int i=sWord.length();i>0;i--){
    s=s+sWord.substring(i-1,i);
  }
  return s;
  }
  return sWord;
}
public String onlyLetters(String sString){
  String s="";
  for(int i=0;i<sString.length();i++){
    if(Character.isLetter(sString.charAt(i))==true){
      s=s+sString.substring(i,i+1);
    }
    s=s+"";
  }
  return s.toLowerCase();
}
