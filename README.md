# Flask Site Generator

---

Generate a Flask website default template by executing in shell:

`sh build.py <site-name>`


Script will immediately install the required Python packages in a virtual environment and run the Flask website, including a user database. If there are changes to the database, it must be migrated:

`flask db migrate -m "[changes]"`


Apply changes using this command:

`flask db upgrade`
