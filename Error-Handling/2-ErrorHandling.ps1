function Throw-Exception { throw "Ut oh" }

try {
    Throw-Exception
} catch {
    Write-Host "Caught exception"
    Write-Output $_
}

try
{
    Throw-Exception -ErrorAction Stop
}
catch
{
    Write-Host "This happened"
    Write-Output $_
}