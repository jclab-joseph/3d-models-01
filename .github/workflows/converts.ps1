cd c:\work

ls
mkdir output

foreach($line in Get-Content .\skp-list.txt) {
    if($line -match "^[^# ].+") {
        echo skp2stl-simple "${line}" "${line}.skp" "output\${line}.stl"
	skp2stl-simple "${line}" "${line}.skp" "output\${line}.stl"
    }
}


