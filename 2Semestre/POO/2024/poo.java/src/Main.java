


//@Test
//@DisplayName ("Teste contrucao do circulo com ponto")
public void testCirculoAlteracaoCentro () {
    Ponto centro1 = new Ponto (x:1, y:2);
    CirculoP c1 -0 new CirculoP(centro1, raio: 3);
    assertEquals(centro1, ci.getCentro());

    Ponto centro2 = new Ponto(x:0, y:0);
    c1.setCentro(centro2);
    c1.setRatio(7);
assertEquals(centro1, ci.getCentro(), message "Centro foi atualizado");
}





