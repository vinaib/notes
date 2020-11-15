<map version="1.1.0">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1603248462585" ID="ID_1578546499" MODIFIED="1603248491518" TEXT="Parallel">
<node CREATED="1603248493396" ID="ID_558591775" MODIFIED="1603248512502" POSITION="right" TEXT="Flynn&apos;s Taxonomy">
<node CREATED="1603248514459" ID="ID_22047040" MODIFIED="1603248523975" TEXT="SISD">
<node CREATED="1603248735344" ID="ID_1961368041" MODIFIED="1603248739317" TEXT="traditional"/>
</node>
<node CREATED="1603248525180" ID="ID_1618628975" MODIFIED="1603248528143" TEXT="SIMD">
<node CREATED="1603248781033" ID="ID_195181035" MODIFIED="1603248800629" TEXT="Same instruction on multiple data"/>
<node CREATED="1603248820576" ID="ID_646792762" MODIFIED="1603248850149" TEXT="Multiple processors executing same instruction on different data"/>
<node CREATED="1603248741250" ID="ID_970963483" MODIFIED="1603248747381" TEXT="Image processing"/>
<node CREATED="1603248748250" ID="ID_656479766" MODIFIED="1603248754149" TEXT="GPU&apos;s"/>
</node>
<node CREATED="1603248528844" ID="ID_189639161" MODIFIED="1603248531718" TEXT="MISD">
<node CREATED="1603248807955" ID="ID_899081659" MODIFIED="1603248877645" TEXT="Multiple instructions executing on same data"/>
<node CREATED="1603248982673" ID="ID_1790527031" MODIFIED="1603248995109" TEXT="Multiple processors executing on same data"/>
<node CREATED="1603248911272" ID="ID_470614672" MODIFIED="1603248921429" TEXT="Not commonly used architecture"/>
</node>
<node CREATED="1603248533188" ID="ID_1600661539" MODIFIED="1603248537286" TEXT="MIMD">
<node CREATED="1603248955584" ID="ID_887850059" MODIFIED="1603248967613" TEXT="Multiple instructions multiple data"/>
<node CREATED="1603248968234" ID="ID_1874575662" MODIFIED="1603248979092" TEXT="Multiple processors executing on different data"/>
<node CREATED="1603249019439" ID="ID_1672269571" MODIFIED="1603249031916" TEXT="Most commonly used architecture"/>
<node CREATED="1603249033424" ID="ID_1745008773" MODIFIED="1603250657070" TEXT="found in Modern Multicore PC, Super computers"/>
<node CREATED="1603249073599" ID="ID_374622057" MODIFIED="1603249081156" TEXT="Classified into">
<node CREATED="1603249082113" ID="ID_842190607" MODIFIED="1603249110316" TEXT="SPMD: Single Program Multiple Data">
<node CREATED="1603249184017" ID="ID_654906233" MODIFIED="1603249368467" TEXT="Copy of Single program executing on different processors"/>
<node CREATED="1603249369080" ID="ID_696194660" MODIFIED="1603249383628" TEXT="All programs are acting on different data"/>
<node CREATED="1603249389704" ID="ID_952260706" MODIFIED="1603249394155" TEXT="Mostly used model"/>
</node>
<node CREATED="1603249087978" ID="ID_1880841564" MODIFIED="1603249176404" TEXT="MPMD: Multiple Program Multiple Data">
<node CREATED="1603249400064" ID="ID_1220662527" MODIFIED="1603249415379" TEXT="Different programs executing on different processors"/>
<node CREATED="1603249416513" ID="ID_805731874" MODIFIED="1603249427514" TEXT="Ofcourse different data too"/>
<node CREATED="1603249428279" ID="ID_824279047" MODIFIED="1603249439571" TEXT="Not popular model as SPMD"/>
<node CREATED="1603249444561" ID="ID_253998756" MODIFIED="1603249477979" TEXT="Kind of Server/Client Model">
<node CREATED="1603249540168" ID="ID_1325942831" MODIFIED="1603249549851" TEXT="One Processor act as a host"/>
<node CREATED="1603249550384" ID="ID_1043526359" MODIFIED="1603249561075" TEXT="assigns jobs to other processors"/>
<node CREATED="1603249562384" ID="ID_1004411153" MODIFIED="1603249581419" TEXT="secondary processor execute and return to Host/Manager processor"/>
</node>
</node>
</node>
</node>
<node CREATED="1603248551721" ID="ID_445624604" MODIFIED="1603248557278" TEXT="Data Stream">
<node CREATED="1603248573786" ID="ID_949722393" MODIFIED="1603248581382" TEXT="Single Data"/>
<node CREATED="1603248581891" ID="ID_1760631923" MODIFIED="1603248589902" TEXT="Multiple Data"/>
</node>
<node CREATED="1603248557867" ID="ID_1970237742" MODIFIED="1603248566094" TEXT="Instr Stream">
<node CREATED="1603248593939" ID="ID_54054977" MODIFIED="1603248600630" TEXT="Single Instruction"/>
<node CREATED="1603248601177" ID="ID_1426834737" MODIFIED="1603248610821" TEXT="Multiple Instruction"/>
</node>
<node CREATED="1603249759310" ID="ID_1836476416" MODIFIED="1603249762650" TEXT="Memory">
<node CREATED="1603249763744" ID="ID_973752659" MODIFIED="1603249770354" TEXT="Shared Memory">
<node CREATED="1603249794895" ID="ID_1822377649" MODIFIED="1603249809298" TEXT="UMA: Uniform Memory Architecture">
<node CREATED="1603249866326" ID="ID_326283256" MODIFIED="1603249876842" TEXT="SMP: Symmetric Multi Processing">
<node CREATED="1603249887543" ID="ID_824520846" MODIFIED="1603250700279" TEXT="Identical processors accessing the same memory through system bus"/>
<node CREATED="1603250173677" ID="ID_1438652094" MODIFIED="1603250190689" TEXT="Cache coherencey is handled by hardware"/>
<node CREATED="1603250194102" ID="ID_187780237" MODIFIED="1603250210473" TEXT="Each processors has its own local cache"/>
</node>
</node>
<node CREATED="1603249809943" ID="ID_1385271205" MODIFIED="1603249823730" TEXT="NUMA: Non Uniform Memory Architecture">
<node CREATED="1603250300548" ID="ID_1158588793" MODIFIED="1603250342929" TEXT="Multiple SMP&apos;s accessing Same Memory"/>
</node>
</node>
<node CREATED="1603249771384" ID="ID_1331694732" MODIFIED="1603249783994" TEXT="Distributed Memory">
<node CREATED="1603250352659" ID="ID_1428370995" MODIFIED="1603250361544" TEXT="Each CPU has its own local memory"/>
<node CREATED="1603250381605" ID="ID_356258410" MODIFIED="1603250388951" TEXT="i.e. local address space"/>
<node CREATED="1603250391157" ID="ID_1809674146" MODIFIED="1603250398016" TEXT="No global address space"/>
<node CREATED="1603250605066" ID="ID_1993890005" MODIFIED="1603250620182" TEXT="More scalable than Shared Memory architecture"/>
</node>
</node>
</node>
</node>
</map>
