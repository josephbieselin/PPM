<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="XLXN_2" />
        <signal name="A0" />
        <signal name="A1" />
        <signal name="A2" />
        <signal name="A3" />
        <signal name="G0" />
        <signal name="B0" />
        <signal name="B1" />
        <signal name="B2" />
        <signal name="B3" />
        <signal name="G1" />
        <signal name="XLXN_13" />
        <signal name="XLXN_14" />
        <signal name="XLXN_15" />
        <signal name="S0" />
        <signal name="S1" />
        <signal name="XLXN_22" />
        <signal name="Y1" />
        <signal name="Y2" />
        <port polarity="Input" name="A0" />
        <port polarity="Input" name="A1" />
        <port polarity="Input" name="A2" />
        <port polarity="Input" name="A3" />
        <port polarity="Input" name="G0" />
        <port polarity="Input" name="B0" />
        <port polarity="Input" name="B1" />
        <port polarity="Input" name="B2" />
        <port polarity="Input" name="B3" />
        <port polarity="Input" name="G1" />
        <port polarity="Input" name="S0" />
        <port polarity="Input" name="S1" />
        <port polarity="Output" name="Y1" />
        <port polarity="Output" name="Y2" />
        <blockdef name="m2_1">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="96" y1="-64" y2="-192" x1="96" />
            <line x2="96" y1="-96" y2="-64" x1="256" />
            <line x2="256" y1="-160" y2="-96" x1="256" />
            <line x2="256" y1="-192" y2="-160" x1="96" />
            <line x2="96" y1="-32" y2="-32" x1="176" />
            <line x2="176" y1="-80" y2="-32" x1="176" />
            <line x2="96" y1="-32" y2="-32" x1="0" />
            <line x2="256" y1="-128" y2="-128" x1="320" />
            <line x2="96" y1="-96" y2="-96" x1="0" />
            <line x2="96" y1="-160" y2="-160" x1="0" />
        </blockdef>
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
        <block symbolname="m2_1" name="XLXI_1">
            <blockpin signalname="A0" name="D0" />
            <blockpin signalname="A1" name="D1" />
            <blockpin signalname="S0" name="S0" />
            <blockpin signalname="XLXN_1" name="O" />
        </block>
        <block symbolname="m2_1" name="XLXI_2">
            <blockpin signalname="A2" name="D0" />
            <blockpin signalname="A3" name="D1" />
            <blockpin signalname="S0" name="S0" />
            <blockpin signalname="XLXN_2" name="O" />
        </block>
        <block symbolname="m2_1" name="XLXI_3">
            <blockpin signalname="B0" name="D0" />
            <blockpin signalname="B1" name="D1" />
            <blockpin signalname="S0" name="S0" />
            <blockpin signalname="XLXN_13" name="O" />
        </block>
        <block symbolname="m2_1" name="XLXI_4">
            <blockpin signalname="B2" name="D0" />
            <blockpin signalname="B3" name="D1" />
            <blockpin signalname="S0" name="S0" />
            <blockpin signalname="XLXN_14" name="O" />
        </block>
        <block symbolname="m2_1e" name="XLXI_5">
            <blockpin signalname="XLXN_1" name="D0" />
            <blockpin signalname="XLXN_2" name="D1" />
            <blockpin signalname="XLXN_22" name="E" />
            <blockpin signalname="S1" name="S0" />
            <blockpin signalname="Y1" name="O" />
        </block>
        <block symbolname="m2_1e" name="XLXI_6">
            <blockpin signalname="XLXN_13" name="D0" />
            <blockpin signalname="XLXN_14" name="D1" />
            <blockpin signalname="XLXN_15" name="E" />
            <blockpin signalname="S1" name="S0" />
            <blockpin signalname="Y2" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_7">
            <blockpin signalname="G0" name="I" />
            <blockpin signalname="XLXN_22" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_8">
            <blockpin signalname="G1" name="I" />
            <blockpin signalname="XLXN_15" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1440" y="864" name="XLXI_1" orien="R0" />
        <instance x="1456" y="1136" name="XLXI_2" orien="R0" />
        <instance x="1456" y="1520" name="XLXI_3" orien="R0" />
        <instance x="1456" y="1824" name="XLXI_4" orien="R0" />
        <instance x="2096" y="1008" name="XLXI_5" orien="R0" />
        <instance x="2096" y="1696" name="XLXI_6" orien="R0" />
        <branch name="XLXN_1">
            <wire x2="1920" y1="736" y2="736" x1="1760" />
            <wire x2="1920" y1="736" y2="784" x1="1920" />
            <wire x2="2096" y1="784" y2="784" x1="1920" />
        </branch>
        <branch name="XLXN_2">
            <wire x2="1936" y1="1008" y2="1008" x1="1776" />
            <wire x2="1936" y1="848" y2="1008" x1="1936" />
            <wire x2="2096" y1="848" y2="848" x1="1936" />
        </branch>
        <branch name="A0">
            <wire x2="1440" y1="704" y2="704" x1="960" />
        </branch>
        <branch name="A1">
            <wire x2="1440" y1="768" y2="768" x1="960" />
        </branch>
        <instance x="1488" y="1232" name="XLXI_7" orien="R0" />
        <instance x="1488" y="1984" name="XLXI_8" orien="R0" />
        <branch name="A2">
            <wire x2="1456" y1="976" y2="976" x1="960" />
        </branch>
        <branch name="A3">
            <wire x2="1456" y1="1040" y2="1040" x1="960" />
        </branch>
        <branch name="G0">
            <wire x2="1488" y1="1200" y2="1200" x1="960" />
        </branch>
        <branch name="B0">
            <wire x2="1456" y1="1360" y2="1360" x1="960" />
        </branch>
        <branch name="B1">
            <wire x2="1456" y1="1424" y2="1424" x1="960" />
        </branch>
        <branch name="B2">
            <wire x2="1456" y1="1664" y2="1664" x1="960" />
        </branch>
        <branch name="B3">
            <wire x2="1456" y1="1728" y2="1728" x1="960" />
        </branch>
        <branch name="G1">
            <wire x2="1488" y1="1952" y2="1952" x1="960" />
        </branch>
        <branch name="XLXN_13">
            <wire x2="1936" y1="1392" y2="1392" x1="1776" />
            <wire x2="1936" y1="1392" y2="1472" x1="1936" />
            <wire x2="2096" y1="1472" y2="1472" x1="1936" />
        </branch>
        <branch name="XLXN_14">
            <wire x2="1936" y1="1696" y2="1696" x1="1776" />
            <wire x2="1936" y1="1536" y2="1696" x1="1936" />
            <wire x2="2096" y1="1536" y2="1536" x1="1936" />
        </branch>
        <branch name="XLXN_15">
            <wire x2="2096" y1="1952" y2="1952" x1="1712" />
            <wire x2="2096" y1="1664" y2="1952" x1="2096" />
        </branch>
        <branch name="S0">
            <wire x2="1360" y1="1792" y2="1792" x1="960" />
            <wire x2="1456" y1="1792" y2="1792" x1="1360" />
            <wire x2="1440" y1="832" y2="832" x1="1360" />
            <wire x2="1360" y1="832" y2="1104" x1="1360" />
            <wire x2="1456" y1="1104" y2="1104" x1="1360" />
            <wire x2="1360" y1="1104" y2="1488" x1="1360" />
            <wire x2="1456" y1="1488" y2="1488" x1="1360" />
            <wire x2="1360" y1="1488" y2="1792" x1="1360" />
        </branch>
        <branch name="S1">
            <wire x2="2000" y1="1872" y2="1872" x1="960" />
            <wire x2="2096" y1="912" y2="912" x1="2000" />
            <wire x2="2000" y1="912" y2="1600" x1="2000" />
            <wire x2="2096" y1="1600" y2="1600" x1="2000" />
            <wire x2="2000" y1="1600" y2="1872" x1="2000" />
        </branch>
        <branch name="XLXN_22">
            <wire x2="2096" y1="1200" y2="1200" x1="1712" />
            <wire x2="2096" y1="976" y2="1200" x1="2096" />
        </branch>
        <branch name="Y1">
            <wire x2="2624" y1="816" y2="816" x1="2416" />
        </branch>
        <branch name="Y2">
            <wire x2="2624" y1="1504" y2="1504" x1="2416" />
        </branch>
        <iomarker fontsize="28" x="960" y="704" name="A0" orien="R180" />
        <iomarker fontsize="28" x="960" y="768" name="A1" orien="R180" />
        <iomarker fontsize="28" x="960" y="976" name="A2" orien="R180" />
        <iomarker fontsize="28" x="960" y="1040" name="A3" orien="R180" />
        <iomarker fontsize="28" x="960" y="1200" name="G0" orien="R180" />
        <iomarker fontsize="28" x="960" y="1360" name="B0" orien="R180" />
        <iomarker fontsize="28" x="960" y="1424" name="B1" orien="R180" />
        <iomarker fontsize="28" x="960" y="1664" name="B2" orien="R180" />
        <iomarker fontsize="28" x="960" y="1728" name="B3" orien="R180" />
        <iomarker fontsize="28" x="960" y="1872" name="S1" orien="R180" />
        <iomarker fontsize="28" x="960" y="1952" name="G1" orien="R180" />
        <iomarker fontsize="28" x="2624" y="1504" name="Y2" orien="R0" />
        <iomarker fontsize="28" x="2624" y="816" name="Y1" orien="R0" />
        <iomarker fontsize="28" x="960" y="1792" name="S0" orien="R180" />
    </sheet>
</drawing>