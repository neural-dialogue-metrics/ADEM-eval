#!/usr/bin/env bash

CONTEXT=/home/cgsdfc/UbuntuDialogueCorpus/ResponseContextPairs/raw_testing_contexts.txt
REFERENCE=/home/cgsdfc/UbuntuDialogueCorpus/ResponseContextPairs/raw_testing_responses.txt
RESPONSE=/home/cgsdfc/UbuntuDialogueCorpus/ResponseContextPairs/ModelPredictions/VHRED/First_VHRED_BeamSearch_5_GeneratedTestResponses.txt_First.txt
U_SCORE=/home/cgsdfc/Result/Test/adem_vhred_ubuntu.txt

python score.py \
    --context_file $CONTEXT \
    --ref_file $REFERENCE \
    --model_file $RESPONSE \
    --utterance_score $U_SCORE
