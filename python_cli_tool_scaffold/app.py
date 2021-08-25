# app.py


import click
import sys


@click.command()
@click.option("--answer", required=True, help="The answer for for everything in the universe")
def launch(answer):
    if answer == "42":
        print("Answer is correct!")
    else:
        print("This is not the answer for everything in the universe")
        sys.exit(1)
