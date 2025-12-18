<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="S" />
        <signal name="R" />
        <signal name="Q" />
        <signal name="XLXN_10" />
        <port polarity="Input" name="S" />
        <port polarity="Input" name="R" />
        <port polarity="Output" name="Q" />
        <blockdef name="nand2b1">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="40" y1="-64" y2="-64" x1="0" />
            <circle r="12" cx="52" cy="-64" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="216" y1="-96" y2="-96" x1="256" />
            <circle r="12" cx="204" cy="-96" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
        </blockdef>
        <block symbolname="nand2b1" name="XLXI_2">
            <blockpin signalname="R" name="I0" />
            <blockpin signalname="Q" name="I1" />
            <blockpin signalname="XLXN_10" name="O" />
        </block>
        <block symbolname="nand2b1" name="XLXI_1">
            <blockpin signalname="S" name="I0" />
            <blockpin signalname="XLXN_10" name="I1" />
            <blockpin signalname="Q" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <iomarker fontsize="28" x="880" y="1232" name="R" orien="R180" />
        <iomarker fontsize="28" x="880" y="1024" name="S" orien="R180" />
        <iomarker fontsize="28" x="1616" y="992" name="Q" orien="R0" />
        <instance x="1200" y="1296" name="XLXI_2" orien="R0" />
        <instance x="1200" y="1088" name="XLXI_1" orien="R0" />
        <branch name="S">
            <wire x2="1200" y1="1024" y2="1024" x1="880" />
        </branch>
        <branch name="R">
            <wire x2="1184" y1="1232" y2="1232" x1="880" />
            <wire x2="1200" y1="1232" y2="1232" x1="1184" />
        </branch>
        <branch name="Q">
            <wire x2="1136" y1="1136" y2="1168" x1="1136" />
            <wire x2="1200" y1="1168" y2="1168" x1="1136" />
            <wire x2="1504" y1="1136" y2="1136" x1="1136" />
            <wire x2="1504" y1="992" y2="992" x1="1456" />
            <wire x2="1504" y1="992" y2="1136" x1="1504" />
            <wire x2="1616" y1="992" y2="992" x1="1504" />
        </branch>
        <branch name="XLXN_10">
            <wire x2="1136" y1="880" y2="960" x1="1136" />
            <wire x2="1200" y1="960" y2="960" x1="1136" />
            <wire x2="1520" y1="880" y2="880" x1="1136" />
            <wire x2="1520" y1="880" y2="1200" x1="1520" />
            <wire x2="1520" y1="1200" y2="1200" x1="1456" />
        </branch>
    </sheet>
</drawing>