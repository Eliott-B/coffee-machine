#!/bin/bash
#			Coffee Machine
# Bash training script
# by Eliott

PS3="Quel est votre numéro de commande ? "

select boisson in "Rien merci" "Café" "Thé"; do
	if [ -z "$boisson" ]; then
		echo "Erreur: Selectionnez une boisson qui exite." ]>&2
	elif [ "$REPLY" -eq 1 ]; then
		echo "Aurevoir !"
		break
	else
		echo "Vous avez choisis la boisson n° $REPLY"
		for i in {20,40,60,80,100}
		do
			echo "--- $i % ---"
			sleep 0.5
		done
		echo "Votre $boisson est prêt !"
	fi
	echo
done
