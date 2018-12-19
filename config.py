import logging
import os

BACKEND = 'Slack'
BOT_DATA_DIR = '/home/errbot/data'
BOT_EXTRA_PLUGIN_DIR = os.getenv("EXTRA_PLUGINS", None)
BOT_LOG_FILE = BOT_DATA_DIR + '/err.log'
BOT_LOG_LEVEL = logging.INFO
BOT_IDENTITY = {
    "token": os.environ.get('SLACK_TOKEN')
}
BOT_ADMINS = (os.getenv("BOT_ADMINS").split(","))
BOT_PREFIX_OPTIONAL_ON_CHAT = True
BOT_ALT_PREFIXES = (os.getenv("BOT_NAME"),)
DIVERT_TO_PRIVATE = ('help', 'about', 'status')
