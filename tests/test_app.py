# test_app.py

from click.testing import CliRunner
from python_cli_tool_scaffold.app import launch


def test_correct_answer():
    runner = CliRunner()
    args = ["--answer", "42"]

    # When
    result = runner.invoke(launch, args)

    # Then
    assert result.exit_code == 0
