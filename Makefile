# https://www.postgresql.org/docs/current/extend-pgxs.html
# 
# building reference: `vim $(pg_config --pgxs)`

EXTENSION = utils
DATA = utils--0.2.sql \
utils--0.2--0.3.sql \
utils--0.3--0.4.sql

PG_CONFIG = pg_config
PGXS := $(shell $(PG_CONFIG) --pgxs)
include $(PGXS)
