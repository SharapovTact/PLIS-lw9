<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="Trig" />
        <signal name="V10" />
        <signal name="XLXN_3" />
        <signal name="XLXN_4" />
        <signal name="XLXN_5" />
        <signal name="Q" />
        <signal name="bQ" />
        <port polarity="Input" name="Trig" />
        <port polarity="Input" name="V10" />
        <port polarity="Output" name="Q" />
        <port polarity="Output" name="bQ" />
        <blockdef name="T_Trigger">
            <timestamp>2025-12-17T1:9:1</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="Divider">
            <timestamp>2025-12-17T1:16:24</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="and2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
        </blockdef>
        <block symbolname="T_Trigger" name="XLXI_1">
            <blockpin signalname="XLXN_4" name="T" />
            <blockpin signalname="Q" name="Q" />
            <blockpin signalname="bQ" name="bQ" />
        </block>
        <block symbolname="Divider" name="XLXI_2">
            <blockpin signalname="V10" name="V10" />
            <blockpin signalname="XLXN_5" name="Sign" />
        </block>
        <block symbolname="and2" name="XLXI_3">
            <blockpin signalname="XLXN_5" name="I0" />
            <blockpin signalname="Trig" name="I1" />
            <blockpin signalname="XLXN_4" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1584" y="1184" name="XLXI_1" orien="R0">
        </instance>
        <branch name="Trig">
            <wire x2="1152" y1="1056" y2="1056" x1="896" />
            <wire x2="1296" y1="1056" y2="1056" x1="1152" />
        </branch>
        <iomarker fontsize="28" x="896" y="1056" name="Trig" orien="R180" />
        <branch name="V10">
            <wire x2="1152" y1="1280" y2="1280" x1="848" />
        </branch>
        <iomarker fontsize="28" x="848" y="1280" name="V10" orien="R180" />
        <instance x="1152" y="1312" name="XLXI_2" orien="R0">
        </instance>
        <branch name="XLXN_4">
            <wire x2="1584" y1="1088" y2="1088" x1="1552" />
        </branch>
        <instance x="1296" y="1184" name="XLXI_3" orien="R0" />
        <branch name="XLXN_5">
            <wire x2="1296" y1="1120" y2="1120" x1="1280" />
            <wire x2="1280" y1="1120" y2="1152" x1="1280" />
            <wire x2="1344" y1="1152" y2="1152" x1="1280" />
            <wire x2="1568" y1="1152" y2="1152" x1="1344" />
            <wire x2="1568" y1="1152" y2="1280" x1="1568" />
            <wire x2="1568" y1="1280" y2="1280" x1="1536" />
        </branch>
        <branch name="Q">
            <wire x2="2000" y1="1088" y2="1088" x1="1968" />
        </branch>
        <iomarker fontsize="28" x="2000" y="1088" name="Q" orien="R0" />
        <branch name="bQ">
            <wire x2="2000" y1="1152" y2="1152" x1="1968" />
        </branch>
        <iomarker fontsize="28" x="2000" y="1152" name="bQ" orien="R0" />
    </sheet>
</drawing>