import logging

from fastapi import FastAPI


app = FastAPI(title="Build System")

logger = logging.getLogger(__name__)
