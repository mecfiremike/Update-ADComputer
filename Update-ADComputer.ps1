$ComputerList = Import-CSV "C:\Users\Michael.Palmer\Desktop\ComputerUpdate.csv"

ForEach ($Computer in $ComputerList) {
Get-ADComputer $Computer.Name | Set-ADComputer -Description $Computer.Description -Location $Computer.Location

}