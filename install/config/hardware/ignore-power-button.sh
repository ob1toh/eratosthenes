# Disable shutting system down on power button to bind it to power menu afterwards
if [[ -f /etc/systemd/logind.conf ]]; then
  sudo sed -i 's/.*HandlePowerKey=.*/HandlePowerKey=ignore/' /etc/systemd/logind.conf
fi
