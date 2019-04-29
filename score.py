import argparse
import numpy as np
from utils import create_model_instance, load_file

if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('--context_file')
    parser.add_argument('--ref_file', help='ground truth file')
    parser.add_argument('--model_file')
    parser.add_argument('--utterance_score', help='write score for all utterances to this file')
    args = parser.parse_args()

    context = load_file(args.context_file)
    gt = load_file(args.ref_file)
    model = load_file(args.model_file)
    adem = create_model_instance()
    scores = adem.get_scores(
        contexts=context,
        gt_responses=gt,
        model_responses=model,
    )

    if args.utterance_score:
        with open(args.utterance_score, 'w') as f:
            for score in scores:
                print(score, file=f)

    print(np.mean(scores))
