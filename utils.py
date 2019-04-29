from models import ADEM
from preprocess import Preprocessor
import logging
import os

ADEM_MODEL = os.path.join(os.path.dirname(__file__), 'weights', 'adem_model.pkl')


def create_model_instance():
    logger = logging.getLogger(__name__)
    logging.basicConfig(level=logging.INFO)

    logger.info('loading model from %s', ADEM_MODEL)
    model = ADEM(Preprocessor(), None, ADEM_MODEL)
    logger.info('model loaded. config: %r', model.config)
    return model


def load_file(filename):
    with open(filename) as f:
        return f.readlines()
