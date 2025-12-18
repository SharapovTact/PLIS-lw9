<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1(1:0)" />
        <signal name="XLXN_2(3:0)" />
        <signal name="Oxyllirator" />
        <signal name="XLXN_8(3:0)" />
        <signal name="XLXN_11(3:0)" />
        <signal name="XLXN_12(3:0)" />
        <signal name="XLXN_28(3:0)" />
        <signal name="DIGIT(1:0)" />
        <signal name="NUMBER(3:0)" />
        <signal name="ENABLE" />
        <signal name="ANOD(3:0)" />
        <signal name="C(7:0)" />
        <signal name="XLXN_40" />
        <signal name="XLXN_41" />
        <port polarity="Input" name="Oxyllirator" />
        <port polarity="Input" name="DIGIT(1:0)" />
        <port polarity="Input" name="NUMBER(3:0)" />
        <port polarity="Input" name="ENABLE" />
        <port polarity="Output" name="ANOD(3:0)" />
        <port polarity="Output" name="C(7:0)" />
        <blockdef name="Multiplexer_of_numbers">
            <timestamp>2025-12-15T9:24:52</timestamp>
            <rect width="304" x="64" y="-320" height="320" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="368" y="-300" height="24" />
            <line x2="432" y1="-288" y2="-288" x1="368" />
        </blockdef>
        <blockdef name="Number_decoder">
            <timestamp>2025-12-15T9:36:5</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="Digit_decoder">
            <timestamp>2025-12-15T11:17:17</timestamp>
            <rect width="64" x="320" y="20" height="24" />
            <line x2="384" y1="32" y2="32" x1="320" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="256" x="64" y="-64" height="128" />
        </blockdef>
        <blockdef name="Num_demultiplexer">
            <timestamp>2025-12-15T10:8:54</timestamp>
            <rect width="288" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-140" height="24" />
            <line x2="0" y1="-128" y2="-128" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="352" y="-236" height="24" />
            <line x2="416" y1="-224" y2="-224" x1="352" />
            <rect width="64" x="352" y="-172" height="24" />
            <line x2="416" y1="-160" y2="-160" x1="352" />
            <rect width="64" x="352" y="-108" height="24" />
            <line x2="416" y1="-96" y2="-96" x1="352" />
            <rect width="64" x="352" y="-44" height="24" />
            <line x2="416" y1="-32" y2="-32" x1="352" />
        </blockdef>
        <blockdef name="Divider">
            <timestamp>2025-12-15T10:24:40</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="Multiplexer_of_numbers" name="XLXI_3">
            <blockpin signalname="XLXN_1(1:0)" name="DIGIT(1:0)" />
            <blockpin signalname="XLXN_8(3:0)" name="NUM_0(3:0)" />
            <blockpin signalname="XLXN_12(3:0)" name="NUM_1(3:0)" />
            <blockpin signalname="XLXN_28(3:0)" name="NUM_2(3:0)" />
            <blockpin signalname="XLXN_11(3:0)" name="NUM_3(3:0)" />
            <blockpin signalname="XLXN_2(3:0)" name="OUT_NUM(3:0)" />
        </block>
        <block symbolname="Number_decoder" name="XLXI_5">
            <blockpin signalname="XLXN_2(3:0)" name="DIGIT(3:0)" />
            <blockpin signalname="C(7:0)" name="PINOUT(7:0)" />
        </block>
        <block symbolname="Digit_decoder" name="XLXI_6">
            <blockpin signalname="XLXN_1(1:0)" name="DIGIT(1:0)" />
            <blockpin signalname="ANOD(3:0)" name="ANOD(3:0)" />
        </block>
        <block symbolname="Num_demultiplexer" name="XLXI_8">
            <blockpin signalname="ENABLE" name="ENABLE" />
            <blockpin signalname="DIGIT(1:0)" name="DIGIT(1:0)" />
            <blockpin signalname="NUMBER(3:0)" name="NUMBER(3:0)" />
            <blockpin signalname="XLXN_8(3:0)" name="NUM_0(3:0)" />
            <blockpin signalname="XLXN_12(3:0)" name="NUM_1(3:0)" />
            <blockpin signalname="XLXN_28(3:0)" name="NUM_2(3:0)" />
            <blockpin signalname="XLXN_11(3:0)" name="NUM_3(3:0)" />
        </block>
        <block symbolname="Divider" name="XLXI_11">
            <blockpin signalname="Oxyllirator" name="V10" />
            <blockpin signalname="XLXN_1(1:0)" name="Q(1:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="XLXN_2(3:0)">
            <wire x2="2192" y1="1056" y2="1056" x1="2016" />
        </branch>
        <instance x="2192" y="1088" name="XLXI_5" orien="R0">
        </instance>
        <branch name="Oxyllirator">
            <wire x2="992" y1="1056" y2="1056" x1="976" />
        </branch>
        <iomarker fontsize="28" x="976" y="1056" name="Oxyllirator" orien="R180" />
        <branch name="XLXN_12(3:0)">
            <wire x2="1504" y1="1312" y2="1312" x1="1424" />
            <wire x2="1504" y1="1184" y2="1312" x1="1504" />
            <wire x2="1584" y1="1184" y2="1184" x1="1504" />
        </branch>
        <instance x="1008" y="1472" name="XLXI_8" orien="R0">
        </instance>
        <branch name="XLXN_11(3:0)">
            <wire x2="1568" y1="1440" y2="1440" x1="1424" />
            <wire x2="1568" y1="1312" y2="1440" x1="1568" />
            <wire x2="1584" y1="1312" y2="1312" x1="1568" />
        </branch>
        <branch name="XLXN_8(3:0)">
            <wire x2="1488" y1="1248" y2="1248" x1="1424" />
            <wire x2="1488" y1="1120" y2="1248" x1="1488" />
            <wire x2="1584" y1="1120" y2="1120" x1="1488" />
        </branch>
        <branch name="XLXN_1(1:0)">
            <wire x2="1472" y1="1056" y2="1056" x1="1376" />
            <wire x2="1584" y1="1056" y2="1056" x1="1472" />
            <wire x2="1568" y1="832" y2="832" x1="1472" />
            <wire x2="1472" y1="832" y2="1056" x1="1472" />
        </branch>
        <instance x="1584" y="1344" name="XLXI_3" orien="R0">
        </instance>
        <branch name="XLXN_28(3:0)">
            <wire x2="1520" y1="1376" y2="1376" x1="1424" />
            <wire x2="1520" y1="1248" y2="1376" x1="1520" />
            <wire x2="1584" y1="1248" y2="1248" x1="1520" />
        </branch>
        <branch name="DIGIT(1:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="960" y="1344" type="branch" />
            <wire x2="960" y1="1344" y2="1344" x1="912" />
            <wire x2="1008" y1="1344" y2="1344" x1="960" />
        </branch>
        <branch name="NUMBER(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="960" y="1440" type="branch" />
            <wire x2="960" y1="1440" y2="1440" x1="912" />
            <wire x2="1008" y1="1440" y2="1440" x1="960" />
        </branch>
        <iomarker fontsize="28" x="912" y="1344" name="DIGIT(1:0)" orien="R180" />
        <iomarker fontsize="28" x="912" y="1440" name="NUMBER(3:0)" orien="R180" />
        <instance x="1568" y="864" name="XLXI_6" orien="R0">
        </instance>
        <instance x="992" y="1088" name="XLXI_11" orien="R0">
        </instance>
        <branch name="ENABLE">
            <wire x2="1008" y1="1248" y2="1248" x1="928" />
        </branch>
        <iomarker fontsize="28" x="928" y="1248" name="ENABLE" orien="R180" />
        <branch name="ANOD(3:0)">
            <wire x2="2048" y1="896" y2="896" x1="1952" />
            <wire x2="2224" y1="896" y2="896" x1="2048" />
            <wire x2="2320" y1="672" y2="672" x1="2224" />
            <wire x2="2224" y1="672" y2="752" x1="2224" />
            <wire x2="2224" y1="752" y2="816" x1="2224" />
            <wire x2="2224" y1="816" y2="880" x1="2224" />
            <wire x2="2224" y1="880" y2="896" x1="2224" />
        </branch>
        <branch name="C(7:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2672" y="1056" type="branch" />
            <wire x2="2592" y1="1056" y2="1056" x1="2576" />
            <wire x2="2672" y1="1056" y2="1056" x1="2592" />
            <wire x2="2800" y1="1056" y2="1056" x1="2672" />
        </branch>
        <iomarker fontsize="28" x="2320" y="672" name="ANOD(3:0)" orien="R0" />
        <iomarker fontsize="28" x="2800" y="1056" name="C(7:0)" orien="R0" />
    </sheet>
</drawing>