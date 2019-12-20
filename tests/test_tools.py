# -*- coding: utf-8 -*-
from unittest import TestCase
from PyMQL5.Tools import MQL5Period as period


class ToolsTestCase(TestCase):

    def test_formata_m1(self):
        self.assertEqual(period("m1"), "PERIOD_M1")
        self.assertEqual(period("M1"), "PERIOD_M1")

    def test_formata_periodo_para_algo_aleatorio(self):
        self.assertEqual(period("aleatorio"), "PERIOD_CURRENT")

    def test_formata_periodo_para_uma_string_vazia(self):
        self.assertEqual(period(""), "PERIOD_CURRENT")
