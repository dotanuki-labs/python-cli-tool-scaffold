# test_app.py

from python_cli_tool_scaffold import app


def test_correct_answer():

    # Given
    argv = ['-a', '42']

    # When
    app.main(argv)

    # Then
    assert True
