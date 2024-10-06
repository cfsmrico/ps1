class Engineer {
    [string]$Name   # Name property
    [string]$Type   # Type property
    [void]DoSomethingSmart() { # public method
        if ((Get-Date).DayOfWeek -in @('Thursday','Friday','Saturday','Sunday')) {
            Write-Host "Weekend time: LET'S GO!"
        } else {
            Write-Host "Work time: LET'S DO IT, TO IT"
        }
    }
}

class JackedEngineer : Engineer {
    [string]SaySomethingExtra() {
        return "Every day is deadlift day"
    }
}

$jackedEngineer = [JackedEngineer]::new()
$jackedEngineer.Name = 'Chaney Victor Fonseca'
$jackedEngineer.Type = 'Jacked'
$jackedEngineer.DoSomethingSmart()
$jackedEngineer
$jackedEngineer.SaySomethingExtra()
<# OUTPUT:
Name                  Type
----                  ----
Chaney Victor Fonseca Jacked
Every day is deadlift day
#>
