#!/bin/sh
echo "Substrate subkey chainspec account extractors"
cat node/src/chain_spec.rs | grep get_account_id_from_seed: | grep '"' | sed  -e "s/get_account_id_from_seed::<sr25519::Public>(\"/\/\//g" | sed  -e "s/\"),//g" | xargs -I '{}' bash -c "subkey inspect {}"
echo "Done"
