New-Item C:\20210916_Training -ItemType Directory
(New-Object System.Net.WebClient).DownloadFile("https://github.com/Kazuma542/Training/blob/main/test.pptx?raw=true","C:\20210916_Training\test.pptx")
invoke-item C:\20210916_Training\test.pptx
