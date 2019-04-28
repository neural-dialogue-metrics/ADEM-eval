from models import ADEM
from preprocess import Preprocessor
from interactive import saved_model
import logging


def create_model_instance():
    logger = logging.getLogger(__name__)
    logging.basicConfig(level=logging.INFO)

    logger.info('loading model from %s', saved_model)
    Adem = ADEM(Preprocessor(), None, saved_model)
    logger.info('model loaded. config: %r', Adem.config)
    return Adem
