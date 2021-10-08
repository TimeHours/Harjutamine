prompt()
'tere maailm'
let tekst = prompt()
undefined
tekst
'tere'
while(prompt()) console.log("test")
////VM274:1 test
////undefined
if (prompt("Sisesta parool") == "qwe123")
    console.log("Õige parool")
else
    console.log("vale parool")
/////VM523:4 vale parool
////undefined
if (prompt("Sisesta parool") == "qwe123")
    console.log("Õige parool")
else
    console.log("vale parool")
////VM527:2 Õige parool
undefined
prompt("qwe",123)
'123'
if (prompt("Sisesta parool") == "qwe123")
    console.log("Õige parool")
else
    console.log("vale parool")
VM599:4 vale parool
////undefined






password = prompt("Sisesta üks number 1-10-ni")
let proovis = 0
let sus = Math.floor(Math.random() * 10) + 1;
while (password != sus)
{
    proovis++
    if (proovis == 1){
    console.log("Oled proovinud " + proovis + " korra")
    }
    else console.log("Oled proovinud " + proovis + " korda")
    if (proovis == 3)
        console.log("ei")

    alert("Sorry, "+ password +" ei ole õige number.")
    password = prompt("Sisesta parool")
    if (password == null)
        break
    if (password == sus)
console.log("Yay! Arvasid õige numbri ära!")



TÖÖTAVAD


password = prompt("Sisesta üks number 1-10-ni")
let proovis = 0
let sus = Math.floor(Math.random() * 10) + 1;
while (password != sus)
{
    proovis++
    if (proovis == 1){
    console.log("Oled proovinud " + proovis + " korra")
    }
    else console.log("Oled proovinud " + proovis + " korda")
    if (proovis == 3)
        break
        

    alert("Sorry, "+ password +" ei ole õige number.")
    password = prompt("Sisesta parool")
    if (password == null)
        break
    if (password == sus)
console.log("Yay! Arvasid õige numbri ära!")
}




password = prompt("Sisesta üks number 1-10-ni")
let proovis = 0
let sus = Math.floor(Math.random() * 10) + 1;
while (password != sus)
{
   console.log(sus)
    proovis++
    if (proovis == 1){
    console.log("Oled proovinud " + proovis + " korra")
    }
    else console.log("Oled proovinud " + proovis + " korda")
    if (proovis == 3){
       break
        }
    if(password == sus-1||password == sus+1){
    console.log("Ai, sa pakkusid väga lähedale.")
}
    alert("Sorry, "+ password +" ei ole õige number.")
    password = prompt("Sisesta parool")
    if (password == null){
        break
        }
    if (password == sus){
console.log("Yay! Arvasid õige numbri ära!")
    }
