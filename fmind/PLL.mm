<map version="1.1.0">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1605422266031" ID="ID_958999494" MODIFIED="1605422271028" TEXT="PLL">
<node CREATED="1605418874423" ID="ID_1792758722" MODIFIED="1605422290050" POSITION="right" TEXT="PLL">
<node CREATED="1605418983488" ID="ID_1615884708" MODIFIED="1605418995235" TEXT="PLL Engine">
<node CREATED="1605418901999" ID="ID_17036240" MODIFIED="1605419045204" TEXT="used to generate different high frequency output clocks by taking various input clock sources "/>
<node CREATED="1605419076896" ID="ID_229768164" MODIFIED="1605419094084" TEXT="Every micro controller has this engine"/>
<node CREATED="1605422240007" ID="ID_533877440" MODIFIED="1605422248668" TEXT="is a feedback controlled system"/>
<node CREATED="1605418998271" ID="ID_846023417" MODIFIED="1605419004787" TEXT="requires input source">
<node CREATED="1605419048239" ID="ID_211444257" MODIFIED="1605419064900" TEXT="internal RC oscillator"/>
<node CREATED="1605419056751" ID="ID_89563568" MODIFIED="1605419058028" TEXT="external crystal oscillator"/>
<node CREATED="1605426139114" ID="ID_138825986" MODIFIED="1605426146678" TEXT="external clock source"/>
</node>
<node CREATED="1605420446686" ID="ID_310712421" MODIFIED="1605420461571" TEXT="PLL M divider: Divides input source"/>
<node CREATED="1605420461990" ID="ID_1497470826" MODIFIED="1605420477803" TEXT="VCO: Voltage Controlled Oscillator">
<node CREATED="1605420504784" ID="ID_1783837841" MODIFIED="1605420517765" TEXT="Heart of PLL engine"/>
<node CREATED="1605420538303" ID="ID_1582940182" MODIFIED="1605420581956" TEXT="is a frequency synthesizer">
<node CREATED="1605420947177" ID="ID_214355079" MODIFIED="1605420992077" TEXT="is an electronic ckt that generates a range of frequencies from a single reference frequency."/>
<node CREATED="1605421018793" ID="ID_1835104912" MODIFIED="1605421021277" TEXT="use the techniques of frequency multiplication, frequency division, direct digital synthesis, frequency mixing, and phase-locked loops to generate its frequencies"/>
<node CREATED="1605421037545" ID="ID_945429756" MODIFIED="1605421038925" TEXT="stability and accuracy of the frequency synthesizer&apos;s output are related to the stability and accuracy of its reference frequency input."/>
<node CREATED="1605421059801" ID="ID_1962312588" MODIFIED="1605421061269" TEXT="synthesizers use stable and accurate reference frequencies, such as those provided by crystal oscillators"/>
</node>
<node CREATED="1605423750978" ID="ID_1755083249" MODIFIED="1605423756358" TEXT="phase comparator">
<node CREATED="1605423775826" ID="ID_1341994824" MODIFIED="1605423777502" TEXT="compares the phases of two input signals and produces an error signal that is proportional to the difference between their phases"/>
</node>
<node CREATED="1605424592721" ID="ID_1609756618" MODIFIED="1605424608342" TEXT="there will be a input constraint for VCO">
<node CREATED="1605424611561" ID="ID_1495569972" MODIFIED="1605424658406" TEXT="for example input to vco must be between 1MHz and 2 MHz"/>
<node CREATED="1605424721962" ID="ID_383959941" MODIFIED="1605424753573" TEXT="this can be controlled by PLL divider M, which is connected at the input stage of VCO"/>
</node>
<node CREATED="1605424756810" ID="ID_234187424" MODIFIED="1605424769084" TEXT="there will be a output constraint for VCO">
<node CREATED="1605424782528" ID="ID_584710416" MODIFIED="1605424810692" TEXT="for example output VCO clock must be between 100MHz and 500MHz"/>
<node CREATED="1605424811689" ID="ID_1649729769" MODIFIED="1605424843276" TEXT="this can be controlled by PLL Multipler ( x N )"/>
</node>
<node CREATED="1605424883264" ID="ID_579053282" MODIFIED="1605424887084" TEXT="PLL Formula">
<node CREATED="1605424888647" ID="ID_167979513" MODIFIED="1605425087171" TEXT="f vco output clock = [ (RC or Crystal osc freq )  / PLL M ] * PLL N"/>
<node CREATED="1605424969104" ID="ID_44714708" MODIFIED="1605424997531" TEXT="f pll general clock output = [ f vco output clock / PLL P ]"/>
</node>
</node>
</node>
</node>
<node CREATED="1605323149623" ID="ID_421349835" MODIFIED="1605323152859" POSITION="left" TEXT="Oscillator">
<node CREATED="1605323153607" ID="ID_1319848830" MODIFIED="1605323155932" TEXT="Internal">
<node CREATED="1605323158991" ID="ID_132798888" MODIFIED="1605323164700" TEXT="RC Oscillator"/>
<node CREATED="1605323174288" ID="ID_932983497" MODIFIED="1605323180315" TEXT="Faster startup time"/>
<node CREATED="1605323200719" ID="ID_171899657" MODIFIED="1605323228363" TEXT="frequency is less accurate than external oscillator">
<node CREATED="1605417621078" ID="ID_1648275949" MODIFIED="1605417629764" TEXT="accuracy depends on temperature"/>
<node CREATED="1605425458637" ID="ID_190228910" MODIFIED="1605425529769" TEXT="temperature influence can be compensated by calibration"/>
<node CREATED="1605425413238" ID="ID_1151337721" MODIFIED="1605425606385" TEXT="calibrated output increases the frequency accuracy "/>
</node>
<node CREATED="1605417763638" ID="ID_1935640357" MODIFIED="1605417773889" TEXT="less current consumption"/>
</node>
<node CREATED="1605323166783" ID="ID_1515666552" MODIFIED="1605323169788" TEXT="external">
<node CREATED="1605323170743" ID="ID_1011957726" MODIFIED="1605323237236" TEXT="Crystal or ceramic resonator"/>
<node CREATED="1605421067481" ID="ID_1546211813" MODIFIED="1605421084309" TEXT="provides stable and accurate reference frequencies"/>
<node CREATED="1605426115882" ID="ID_1933087038" MODIFIED="1605426127814" TEXT="external clock source"/>
</node>
<node CREATED="1605323271072" ID="ID_1473236615" MODIFIED="1605323293395" TEXT="Frequency accurate is highly depends on Temperature">
<node CREATED="1605417572210" ID="ID_1822491552" MODIFIED="1605417589029" TEXT="As temp increases freq accuracy decreases"/>
</node>
</node>
</node>
</map>
