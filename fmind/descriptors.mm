<map version="1.1.0">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1596790845513" ID="ID_1023767444" MODIFIED="1596793604360" STYLE="fork" TEXT="descriptors">
<node CREATED="1596791100325" HGAP="58" ID="ID_1073774613" MODIFIED="1596794435012" POSITION="right" TEXT="Long Descriptor" VSHIFT="62">
<node CREATED="1596791118015" ID="ID_65096220" MODIFIED="1596793604357" TEXT="No Domains"/>
<node CREATED="1596791400383" ID="ID_1009168028" MODIFIED="1596796250677" TEXT="AP[2:1] Simplified model">
<node CREATED="1596791563002" ID="ID_932271906" MODIFIED="1596793604357" TEXT="AP[2]: Disable Write access"/>
<node CREATED="1596791575316" ID="ID_1416769312" MODIFIED="1596793604357" TEXT="AP[1]: Enable Unprivileged access"/>
</node>
<node CREATED="1596792939351" ID="ID_1043766646" MODIFIED="1596793604357" TEXT="SCTLR.TRE=1: TEX[0], C, B Defines index to MMU remap registers"/>
<node CREATED="1596793092990" ID="ID_1778134579" MODIFIED="1596793604357" TEXT="TEX[2:1]: "/>
<node CREATED="1596797672568" ID="ID_44803151" MODIFIED="1596797682759" TEXT="SH[1:0]">
<node CREATED="1596797682764" ID="ID_279397897" MODIFIED="1596797714474" TEXT="00: Non Shareable"/>
<node CREATED="1596797689565" ID="ID_950222315" MODIFIED="1596797752082" TEXT="01: Un Predicatable"/>
<node CREATED="1596797691689" ID="ID_908861110" MODIFIED="1596797734379" TEXT="10: Outer Shareable"/>
<node CREATED="1596797693470" ID="ID_871867831" MODIFIED="1596797743299" TEXT="11: Inner Shareable"/>
</node>
</node>
<node CREATED="1596791157830" ID="ID_1621751017" MODIFIED="1596799470019" POSITION="left" TEXT="Short Descriptor">
<node CREATED="1596790947008" ID="ID_122758416" MODIFIED="1596793604357" TEXT="AP[2]"/>
<node CREATED="1596791004666" ID="ID_1164855172" MODIFIED="1596793604358" TEXT="AP[1:0]"/>
<node CREATED="1596791464750" ID="ID_542789430" MODIFIED="1596796250679" TEXT="16 Domains">
<node CREATED="1596791474052" ID="ID_1226899942" MODIFIED="1596793604358" TEXT="No access"/>
<node CREATED="1596791483946" ID="ID_1658349726" MODIFIED="1596793604358" TEXT="Client"/>
<node CREATED="1596791491518" ID="ID_503656983" MODIFIED="1596793604358" TEXT="Manager"/>
</node>
<node CREATED="1596792151596" ID="ID_270884710" MODIFIED="1596796250680" TEXT="S BIT[1]">
<node CREATED="1596792176703" ID="ID_468559091" MODIFIED="1596793604358" TEXT="S=0, Normal Memory Non Shareable"/>
<node CREATED="1596792201620" ID="ID_1572602632" MODIFIED="1596793604358" TEXT="S=1, Normal memory Shareable"/>
</node>
<node CREATED="1596792241503" ID="ID_248209511" MODIFIED="1596796250681" TEXT="C BIT[2]">
<node CREATED="1596792251271" ID="ID_1570012826" MODIFIED="1596793604358" TEXT="00- Non Cacheable"/>
<node CREATED="1596792290506" ID="ID_227643977" MODIFIED="1596793604358" TEXT="01: Write Back, Write Allocate"/>
<node CREATED="1596792296698" ID="ID_1756697771" MODIFIED="1596793604358" TEXT="10, Write Through, No Write Allocate"/>
<node CREATED="1596792301054" ID="ID_239088363" MODIFIED="1596793604358" TEXT="11: Write Back, No Write Allocate"/>
</node>
<node CREATED="1596792928936" ID="ID_837283193" MODIFIED="1596797043235" TEXT="SCTLR.TRE = 0: ">
<node CREATED="1596797011874" ID="ID_758596461" MODIFIED="1596797057520" TEXT="TEX[2:0], C,B: Describes memory region attributes"/>
<node CREATED="1596796088015" ID="ID_1138813518" MODIFIED="1596796132982" TEXT="TEX[0], C,B, with PRRR, NRRR describes memory region attributes">
<node CREATED="1596798556085" ID="ID_108487786" MODIFIED="1596798764629" TEXT="000 0 0: Strongly Ordered, Shareable"/>
<node CREATED="1596798569567" ID="ID_1716967393" MODIFIED="1596798829102" TEXT="000 0 1: Device Shareable"/>
<node CREATED="1596798576248" ID="ID_1425451519" MODIFIED="1596798891526" TEXT="000 1 0: Normal S BIT[1], Outer and Inner Write through, No Write Allocate"/>
<node CREATED="1596798582135" ID="ID_1719794827" MODIFIED="1596798930030" TEXT="000 1 1: Normal S BIT[1]:Outer and Inner Write-Back, no Write-Allocate"/>
<node CREATED="1596798591365" ID="ID_1755877547" MODIFIED="1596798962855" TEXT="001 0 0: Normal S BIT[1], Outer and Inner Non-cacheable"/>
<node CREATED="1596798597055" ID="ID_1706951459" MODIFIED="1596798600236" TEXT="001 0 1"/>
<node CREATED="1596798601199" ID="ID_1590133026" MODIFIED="1596798604532" TEXT="001 1 0"/>
<node CREATED="1596798605358" ID="ID_477318290" MODIFIED="1596798992214" TEXT="001 1 1, Normal S BIT[1], Outer and Inner Write-Back, Write-Allocate"/>
<node CREATED="1596798622077" ID="ID_1588499865" MODIFIED="1596799012086" TEXT="010 0 0, Non-shareable Device"/>
<node CREATED="1596798631598" ID="ID_1766163038" MODIFIED="1596798635196" TEXT="010 0 1"/>
<node CREATED="1596798640166" ID="ID_107980123" MODIFIED="1596798643973" TEXT="010 1 X"/>
<node CREATED="1596798648485" ID="ID_1524040848" MODIFIED="1596798655420" TEXT="011 X X"/>
<node CREATED="1596798660098" ID="ID_1791990701" MODIFIED="1596799047975" TEXT="1BB A A, Cacheable memory, Normal"/>
</node>
</node>
<node CREATED="1596792928936" HGAP="104" ID="ID_30566217" MODIFIED="1596798732157" TEXT="SCTLR.TRE = 1" VSHIFT="-39">
<node CREATED="1596796079607" ID="ID_904102899" MODIFIED="1596796087398" TEXT="TEX[2:1]"/>
</node>
<node CREATED="1596794178940" HGAP="122" ID="ID_1245982657" MODIFIED="1596796250682" TEXT="AP[2:0] Model: SCTLR.AFE=0" VSHIFT="44">
<node CREATED="1596794870828" ID="ID_869209314" MODIFIED="1596794950014" TEXT="000, All accesses generate Permission faults"/>
<node CREATED="1596794911716" ID="ID_1721850864" MODIFIED="1596797183221" TEXT="001, R/W PL1, No Access PL0"/>
<node CREATED="1596794915562" ID="ID_182831444" MODIFIED="1596797218545" TEXT="010, R/W PL1, RD Only PL0"/>
<node CREATED="1596794923516" ID="ID_1539246068" MODIFIED="1596794995253" TEXT="011, Full access"/>
<node CREATED="1596794927369" ID="ID_763279589" MODIFIED="1596795004351" TEXT="100, Reserved"/>
<node CREATED="1596794930282" ID="ID_1815001453" MODIFIED="1596797248785" TEXT="101, RD Only PL1"/>
<node CREATED="1596794933098" ID="ID_540685073" MODIFIED="1596797282857" TEXT="110, RD Only at all levels"/>
<node CREATED="1596794935655" ID="ID_709382370" MODIFIED="1596797305489" TEXT="111, RD Only at all levels"/>
</node>
<node CREATED="1596794347527" HGAP="16" ID="ID_835165218" MODIFIED="1596796250683" TEXT="AP[2:1] Model:SCTLR.AFE=1" VSHIFT="16">
<node CREATED="1596791563002" ID="ID_286647218" MODIFIED="1596793604357" TEXT="AP[2]: Disable Write access"/>
<node CREATED="1596791575316" ID="ID_1719956439" MODIFIED="1596793604357" TEXT="AP[1]: Enable Unprivileged access"/>
<node CREATED="1596794517194" ID="ID_69886132" MODIFIED="1596794552051" TEXT="00-R/W at PL1"/>
<node CREATED="1596794556526" ID="ID_1850037974" MODIFIED="1596794582153" TEXT="01-R/W At all levels"/>
<node CREATED="1596794585133" ID="ID_734213064" MODIFIED="1596794606264" TEXT="10-RD Only at PL1"/>
<node CREATED="1596794611417" ID="ID_210538886" MODIFIED="1596794622632" TEXT="11-RD Only at all levels"/>
</node>
</node>
<node CREATED="1596793649953" HGAP="34" ID="ID_514061437" MODIFIED="1596796029984" POSITION="right" TEXT="NRRR: Normal Memory Remap Region Register" VSHIFT="62"/>
<node CREATED="1596793632690" HGAP="-18" ID="ID_113983976" MODIFIED="1596794427514" POSITION="left" TEXT="PRRR: Primary Region Remap Register" VSHIFT="73"/>
</node>
</map>
