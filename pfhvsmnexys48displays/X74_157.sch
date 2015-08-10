<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="Y0" />
        <signal name="Y1" />
        <signal name="Y2" />
        <signal name="Y3" />
        <signal name="B3" />
        <signal name="A3" />
        <signal name="A2" />
        <signal name="B2" />
        <signal name="A1" />
        <signal name="B1" />
        <signal name="A0" />
        <signal name="B0" />
        <signal name="S" />
        <signal name="XLXN_196" />
        <signal name="G" />
        <port polarity="Output" name="Y0" />
        <port polarity="Output" name="Y1" />
        <port polarity="Output" name="Y2" />
        <port polarity="Output" name="Y3" />
        <port polarity="Input" name="B3" />
        <port polarity="Input" name="A3" />
        <port polarity="Input" name="A2" />
        <port polarity="Input" name="B2" />
        <port polarity="Input" name="A1" />
        <port polarity="Input" name="B1" />
        <port polarity="Input" name="A0" />
        <port polarity="Input" name="B0" />
        <port polarity="Input" name="S" />
        <port polarity="Input" name="G" />
        <blockdef name="m2_1e">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="96" y1="-96" y2="-96" x1="0" />
            <line x2="96" y1="-32" y2="-32" x1="0" />
            <line x2="92" y1="-32" y2="-32" x1="208" />
            <line x2="208" y1="-152" y2="-32" x1="208" />
            <line x2="96" y1="-96" y2="-96" x1="144" />
            <line x2="144" y1="-136" y2="-96" x1="144" />
            <line x2="96" y1="-128" y2="-256" x1="96" />
            <line x2="96" y1="-160" y2="-128" x1="256" />
            <line x2="256" y1="-224" y2="-160" x1="256" />
            <line x2="256" y1="-256" y2="-224" x1="96" />
            <line x2="256" y1="-192" y2="-192" x1="320" />
            <line x2="96" y1="-224" y2="-224" x1="0" />
            <line x2="96" y1="-160" y2="-160" x1="0" />
        </blockdef>
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <block symbolname="m2_1e" name="XLXI_114">
            <blockpin signalname="A0" name="D0" />
            <blockpin signalname="B0" name="D1" />
            <blockpin signalname="XLXN_196" name="E" />
            <blockpin signalname="S" name="S0" />
            <blockpin signalname="Y0" name="O" />
        </block>
        <block symbolname="m2_1e" name="XLXI_115">
            <blockpin signalname="A1" name="D0" />
            <blockpin signalname="B1" name="D1" />
            <blockpin signalname="XLXN_196" name="E" />
            <blockpin signalname="S" name="S0" />
            <blockpin signalname="Y1" name="O" />
        </block>
        <block symbolname="m2_1e" name="XLXI_116">
            <blockpin signalname="A2" name="D0" />
            <blockpin signalname="B2" name="D1" />
            <blockpin signalname="XLXN_196" name="E" />
            <blockpin signalname="S" name="S0" />
            <blockpin signalname="Y2" name="O" />
        </block>
        <block symbolname="m2_1e" name="XLXI_117">
            <blockpin signalname="A3" name="D0" />
            <blockpin signalname="B3" name="D1" />
            <blockpin signalname="XLXN_196" name="E" />
            <blockpin signalname="S" name="S0" />
            <blockpin signalname="Y3" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_118">
            <blockpin signalname="G" name="I" />
            <blockpin signalname="XLXN_196" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1632" y="928" name="XLXI_114" orien="R0" />
        <instance x="1632" y="1248" name="XLXI_115" orien="R0" />
        <instance x="1632" y="1568" name="XLXI_116" orien="R0" />
        <instance x="1632" y="1872" name="XLXI_117" orien="R0" />
        <branch name="Y0">
            <wire x2="2176" y1="736" y2="736" x1="1952" />
        </branch>
        <branch name="Y1">
            <wire x2="2176" y1="1056" y2="1056" x1="1952" />
        </branch>
        <branch name="Y2">
            <wire x2="2176" y1="1376" y2="1376" x1="1952" />
        </branch>
        <branch name="Y3">
            <wire x2="2176" y1="1680" y2="1680" x1="1952" />
        </branch>
        <branch name="B3">
            <wire x2="1248" y1="1712" y2="1712" x1="1136" />
            <wire x2="1632" y1="1712" y2="1712" x1="1248" />
        </branch>
        <branch name="A3">
            <wire x2="1248" y1="1648" y2="1648" x1="1136" />
            <wire x2="1632" y1="1648" y2="1648" x1="1248" />
        </branch>
        <branch name="A2">
            <wire x2="1232" y1="1344" y2="1344" x1="1136" />
            <wire x2="1632" y1="1344" y2="1344" x1="1232" />
        </branch>
        <branch name="B2">
            <wire x2="1232" y1="1408" y2="1408" x1="1136" />
            <wire x2="1632" y1="1408" y2="1408" x1="1232" />
        </branch>
        <branch name="A1">
            <wire x2="1216" y1="1024" y2="1024" x1="1136" />
            <wire x2="1232" y1="1024" y2="1024" x1="1216" />
            <wire x2="1632" y1="1024" y2="1024" x1="1232" />
        </branch>
        <branch name="B1">
            <wire x2="1216" y1="1088" y2="1088" x1="1136" />
            <wire x2="1632" y1="1088" y2="1088" x1="1216" />
        </branch>
        <branch name="A0">
            <wire x2="1216" y1="704" y2="704" x1="1136" />
            <wire x2="1632" y1="704" y2="704" x1="1216" />
        </branch>
        <branch name="B0">
            <wire x2="1216" y1="768" y2="768" x1="1136" />
            <wire x2="1632" y1="768" y2="768" x1="1216" />
        </branch>
        <branch name="S">
            <wire x2="1248" y1="1776" y2="1776" x1="1136" />
            <wire x2="1552" y1="1776" y2="1776" x1="1248" />
            <wire x2="1632" y1="1776" y2="1776" x1="1552" />
            <wire x2="1632" y1="832" y2="832" x1="1552" />
            <wire x2="1552" y1="832" y2="1152" x1="1552" />
            <wire x2="1632" y1="1152" y2="1152" x1="1552" />
            <wire x2="1552" y1="1152" y2="1472" x1="1552" />
            <wire x2="1632" y1="1472" y2="1472" x1="1552" />
            <wire x2="1552" y1="1472" y2="1776" x1="1552" />
        </branch>
        <branch name="XLXN_196">
            <wire x2="1600" y1="1840" y2="1840" x1="1424" />
            <wire x2="1632" y1="1840" y2="1840" x1="1600" />
            <wire x2="1632" y1="896" y2="896" x1="1600" />
            <wire x2="1600" y1="896" y2="1216" x1="1600" />
            <wire x2="1632" y1="1216" y2="1216" x1="1600" />
            <wire x2="1600" y1="1216" y2="1536" x1="1600" />
            <wire x2="1632" y1="1536" y2="1536" x1="1600" />
            <wire x2="1600" y1="1536" y2="1840" x1="1600" />
        </branch>
        <instance x="1200" y="1872" name="XLXI_118" orien="R0" />
        <branch name="G">
            <wire x2="1200" y1="1840" y2="1840" x1="1136" />
        </branch>
        <iomarker fontsize="28" x="1136" y="704" name="A0" orien="R180" />
        <iomarker fontsize="28" x="1136" y="768" name="B0" orien="R180" />
        <iomarker fontsize="28" x="1136" y="1024" name="A1" orien="R180" />
        <iomarker fontsize="28" x="1136" y="1088" name="B1" orien="R180" />
        <iomarker fontsize="28" x="1136" y="1344" name="A2" orien="R180" />
        <iomarker fontsize="28" x="1136" y="1408" name="B2" orien="R180" />
        <iomarker fontsize="28" x="1136" y="1648" name="A3" orien="R180" />
        <iomarker fontsize="28" x="1136" y="1712" name="B3" orien="R180" />
        <iomarker fontsize="28" x="1136" y="1776" name="S" orien="R180" />
        <iomarker fontsize="28" x="1136" y="1840" name="G" orien="R180" />
        <iomarker fontsize="28" x="2176" y="736" name="Y0" orien="R0" />
        <iomarker fontsize="28" x="2176" y="1056" name="Y1" orien="R0" />
        <iomarker fontsize="28" x="2176" y="1376" name="Y2" orien="R0" />
        <iomarker fontsize="28" x="2176" y="1680" name="Y3" orien="R0" />
    </sheet>
</drawing>