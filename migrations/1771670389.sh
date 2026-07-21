echo "Add Logout option to system menu"

eratosthenes-refresh-sddm

if [[ -f /etc/sddm.conf.d/autologin.conf ]]; then
  sudo sed -i 's/^Current=.*/Current=eratosthenes/' /etc/sddm.conf.d/autologin.conf
fi
