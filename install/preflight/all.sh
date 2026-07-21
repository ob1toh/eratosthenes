source $ERATOSTHENES_INSTALL/preflight/guard.sh
source $ERATOSTHENES_INSTALL/preflight/begin.sh
run_logged $ERATOSTHENES_INSTALL/preflight/show-env.sh
run_logged $ERATOSTHENES_INSTALL/preflight/pacman.sh
run_logged $ERATOSTHENES_INSTALL/preflight/migrations.sh
run_logged $ERATOSTHENES_INSTALL/preflight/first-run-mode.sh
run_logged $ERATOSTHENES_INSTALL/preflight/disable-mkinitcpio.sh
