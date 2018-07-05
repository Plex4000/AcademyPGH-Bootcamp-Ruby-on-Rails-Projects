function counter(){
    var paragraph = document.getElementById("paragraph").value;
    var pcount = paragraph.split(" ").length;
    document.getElementById("wordcount").innerHTML = "The number of words is: " + pcount;

    var withoutSpace = paragraph.replace(/ /g,"");
    var charCount = withoutSpace.length;
    document.getElementById("charcount").innerHTML = "The number of characters is: " + charCount;
}