      $Path = "C:\projects"
      if ((Test-Path $Path)) {
        $Dir = (Get-Item "C:\project[S]").Fullname
        Write-Host $Dir
        if ($Dir -ceq $Path){
            Write-Host "Correct case"
          }
        else {
            Write-Host "Case error"
            exit 1
          }
      } else {
        Write-Host "Projects folder missing completely"
        exit 1
      }
      if($LastExitCode -ne 0) { $host.SetShouldExit($LastExitCode) }
