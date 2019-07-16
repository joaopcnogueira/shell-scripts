DO {
    $date = Get-Date -UFormat "%d/%m/%Y %H:%M:%S"
    echo $date
    calc
    Start-Sleep –Seconds 2
    Stop-Process -processname Calculator
} While ( 1 -ne 0 )