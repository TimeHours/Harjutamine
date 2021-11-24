for (let line of file) {
    let name = "asd", serial = "12354654"
    let sql = "('"+ serial +"','"+name+"'),\n";
    fs.appendFile('fail.txt', sql)
}




//teine variant 
let sql = "INSERT INTO table (serial, name) VALUES "
for (let line of line) {
  let name = "asd", serial = "12354654"
  sqlv += "('"+ serial +"','"+name+"'),\n";
  }
fs.writeFile('fail.txt', sql)