# -*- coding: utf-8 -*-
from PyMQL5.Tools import MQL5Period as period


def test_formata_m1():
    assert period("m1") == "PERIOD_M1"
    assert period("M1") == "PERIOD_M1"

def test_formata_periodo_para_algo_aleatorio():
    assert period("aleatorio") == "PERIOD_CURRENT"

def test_formata_periodo_para_uma_string_vazia():
    assert period("") == "PERIOD_CURRENT"
