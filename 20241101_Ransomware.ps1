# 7z.exeのパスを指定
$exe7zip = "C:\Program Files\7-Zip\7z.exe"
# 圧縮するフォルダ(またはファイル)のパスを指定
$targetPath = "C:\test"
# 作成するZIPファイルのパスを指定
$zipFilePath = "C:\test\test.zip"
# パスワードを指定
$password = "VeryVeryStrongPassword"

# 7z.exeを実行する際の引数を組み立て
$arg=" a -ssw -p" + $password + " " + $zipFilePath + " " + $targetPath

$ws = New-Object -ComObject Wscript.Shell

    # 7z.exe(圧縮)を実行
    Start-Process -FilePath $exe7zip -ArgumentList $arg -Wait -WindowStyle Hidden

    # ファイルの削除
    Remove-Item -Path $targetPath  -Force -recurse -Exclude *.zip
