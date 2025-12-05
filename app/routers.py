from fastapi import APIRouter
from app.api.index import IndexHandler
from app.api.check import CheckHandler

index_handler = IndexHandler()
check_handler = CheckHandler()

router = APIRouter()

router.get("/")(index_handler.index)
router.get("/check")(check_handler.check)