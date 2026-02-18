import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;

public class LampadaTeste{
    @Test

    public void shouldHaveModeOFF(){
        Lampada l = new Lampada();
        assertEquals(Modo.OFF, l.getModo());

      }

      @Test
      public void testLampON(){
          Lampada l = new Lampada();
          double consumoTotal = l.getConsumoTotal();
          double stampAntes = l.getStamp();

          l.lampON();
          assertAll(
            () -> {
                assertEquals(ModoLampada.ON, l.getModo());
            },
            () -> {
                assertTrue(consumoTotal < l.getConsumoTotal());
            },
            () -> {
                assertTrue(stampAntes < l.getStamp());
            }


            );
      }

}