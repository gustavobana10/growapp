import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/auth/firebase_auth/auth_util.dart';

double custoSilo(
  double varX,
  int variavel,
) {
  var x = varX * variavel;
  // Definindo as constantes da função
  double a = -10 / 693;
  double b = 169600 / 231;
  double c = 28060000 / 11;

  // Calculando y de acordo com a função polinomial
  double y = (a * (x * x)) + (b * x) + c;

  return y / x;
}

double somaAreaCultivada(List<SafraStruct> listaSafra) {
  double result = 0;
  for (var element in listaSafra) {
    result += element.areaCultivada;
  }

  return result;
}

double custoSiloFinanciamento(
  double varX,
  int variavel,
) {
  var x = varX * variavel;
  // Definindo as constantes da função
  double a = -10 / 693;
  double b = 169600 / 231;
  double c = 28060000 / 11;

  // Calculando y de acordo com a função polinomial
  double y = (a * (x * x)) + (b * x) + c;

  return y;
}

double somaProdutividade(List<SafraStruct> listaSafra) {
  double result = 0;
  for (var element in listaSafra) {
    result += element.produtividade;
  }

  return result;
}

double somaCustoProducao(List<SafraStruct> listaSafra) {
  double result = 0;
  for (var element in listaSafra) {
    result += element.producao;
  }

  return result;
}

double somaTransporte(List<SafraStruct> listaSafra) {
  double result = 0;
  for (var element in listaSafra) {
    result += element.transporte;
  }

  return result;
}

double produtividadeToneladas(
  double produtividade,
  double areaCultivada,
) {
  return ((produtividade * areaCultivada) * 60) / 1000;
}

double calcularFinanciamentoSilo(
  double custoTotal,
  double taxaJurosAnual,
  int anos,
  int parceiros,
) {
  // Convertendo a taxa de juros anual para uma taxa decimal
  double taxaJuros = taxaJurosAnual / 100;

  // Calculando o número total de pagamentos
  int totalPagamentos = anos;

  // Calculando o pagamento anual usando a fórmula de amortização
  double pagamentoAnual = (custoTotal * taxaJuros) /
      (1 - 1 / math.pow(1 + taxaJuros, totalPagamentos));

  return pagamentoAnual / parceiros;
}
