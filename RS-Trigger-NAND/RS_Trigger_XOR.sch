<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="XLXN_2" />
        <signal name="R" />
        <signal name="Q" />
        <signal name="S" />
        <signal name="XLXN_7" />
        <port polarity="Input" name="R" />
        <port polarity="Output" name="Q" />
        <port polarity="Input" name="S" />
        <blockdef name="nor2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="216" y1="-96" y2="-96" x1="256" />
            <circle r="12" cx="204" cy="-96" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
        </blockdef>
        <block symbolname="nor2" name="XLXI_3">
            <blockpin signalname="XLXN_7" name="I0" />
            <blockpin signalname="R" name="I1" />
            <blockpin signalname="Q" name="O" />
        </block>
        <block symbolname="nor2" name="XLXI_4">
            <blockpin signalname="S" name="I0" />
            <blockpin signalname="Q" name="I1" />
            <blockpin signalname="XLXN_7" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1472" y="1008" name="XLXI_3" orien="R0" />
        <instance x="1472" y="1200" name="XLXI_4" orien="R0" />
        <branch name="R">
            <wire x2="1472" y1="880" y2="880" x1="1360" />
        </branch>
        <branch name="Q">
            <wire x2="1424" y1="992" y2="1072" x1="1424" />
            <wire x2="1472" y1="1072" y2="1072" x1="1424" />
            <wire x2="1776" y1="992" y2="992" x1="1424" />
            <wire x2="1776" y1="912" y2="912" x1="1728" />
            <wire x2="1888" y1="912" y2="912" x1="1776" />
            <wire x2="1776" y1="912" y2="992" x1="1776" />
        </branch>
        <branch name="S">
            <wire x2="1376" y1="1136" y2="1136" x1="1360" />
            <wire x2="1472" y1="1136" y2="1136" x1="1376" />
        </branch>
        <iomarker fontsize="28" x="1360" y="880" name="R" orien="R180" />
        <iomarker fontsize="28" x="1360" y="1136" name="S" orien="R180" />
        <iomarker fontsize="28" x="1888" y="912" name="Q" orien="R0" />
        <branch name="XLXN_7">
            <wire x2="1472" y1="944" y2="944" x1="1408" />
            <wire x2="1408" y1="944" y2="1024" x1="1408" />
            <wire x2="1792" y1="1024" y2="1024" x1="1408" />
            <wire x2="1792" y1="1024" y2="1104" x1="1792" />
            <wire x2="1792" y1="1104" y2="1104" x1="1728" />
        </branch>
    </sheet>
</drawing>