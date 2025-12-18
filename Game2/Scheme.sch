<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_6(3:0)" />
        <signal name="DB_OUT(3:0)" />
        <signal name="E" />
        <signal name="XLXN_11(3:0)" />
        <port polarity="Output" name="DB_OUT(3:0)" />
        <port polarity="Input" name="E" />
        <blockdef name="Decounter">
            <timestamp>2025-12-18T22:51:16</timestamp>
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="256" x="64" y="-192" height="384" />
        </blockdef>
        <block symbolname="Decounter" name="XLXI_2">
            <blockpin signalname="E" name="E" />
            <blockpin signalname="DB_OUT(3:0)" name="DB_IN(3:0)" />
            <blockpin signalname="DB_OUT(3:0)" name="DB_OUT(3:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1216" y="1248" name="XLXI_2" orien="R0">
        </instance>
        <branch name="DB_OUT(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2240" y="1024" type="branch" />
            <wire x2="1744" y1="928" y2="928" x1="1168" />
            <wire x2="1744" y1="928" y2="1088" x1="1744" />
            <wire x2="1776" y1="1088" y2="1088" x1="1744" />
            <wire x2="2160" y1="1088" y2="1088" x1="1776" />
            <wire x2="1168" y1="928" y2="1152" x1="1168" />
            <wire x2="1216" y1="1152" y2="1152" x1="1168" />
            <wire x2="1744" y1="1088" y2="1088" x1="1600" />
            <wire x2="2240" y1="1024" y2="1024" x1="2160" />
            <wire x2="2320" y1="1024" y2="1024" x1="2240" />
            <wire x2="2160" y1="1024" y2="1088" x1="2160" />
        </branch>
        <iomarker fontsize="28" x="2320" y="1024" name="DB_OUT(3:0)" orien="R0" />
        <branch name="E">
            <wire x2="1216" y1="1216" y2="1216" x1="1008" />
        </branch>
        <iomarker fontsize="28" x="1008" y="1216" name="E" orien="R180" />
    </sheet>
</drawing>