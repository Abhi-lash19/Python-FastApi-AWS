from mylib.logic import wiki


def test_wiki():
    assert "capital city" in wiki("Port Blair")
