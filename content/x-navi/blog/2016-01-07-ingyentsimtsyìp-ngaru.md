---
id: 2016-01-07-ingyentsimtsyip-ngaru
title: Ingyentsimtsyìp ngaru
kind: article
created_at: 2016-01-07 21:26
tags:
 - navi-blog-month
 - random
summary: "Fìtrr ngìmop oel ngaru hì'ia ingyentsim..."
needs_popups: true
---

{Fìtrr ngìmop oel ayngaru hì'ia ingyentsim\today I made a little puzzle for you}.
{Kezemplltxe\of course}
{sìmar oel lì'fyati leNa'vi\I used the Na'vi language} :)

{Nari si\watch out}:
{ayfam alu\the sounds} <i>ll</i>, <i>rr</i>, <i>kx</i>, <i>px</i>, <i>tx</i>, <i>ng</i> {sì\and} <i>ts</i>
{lu 'awa pamrelvi nì'aw\are one letter only}!

<%
lengths = [7, 2, 7, 4, 2, 6, 3, 6, 5, 4, 5, 4, 3]
offsets = [0, 1, 0, 1, 0, 4, 1, 0, 1, 2, 2, 3, 2]
hints = ['{pxaya tute a wem\many people that fight}',
         '{sä&lsquo;o a fte niväk\tool for drinking}',
         '{pam awok\loud sound}',
         '{rusey a ke lu ioang\a living thing that is not an animal}',
         '{kemlì&lsquo;u a fkol sar pxìm frato\verb that is used the most}',
         '{krra nga hasey soli aysìhawlur\when you have finished the preparations}',
         '{tìng nari\look}',
         '{tseng a fko kä tsatsenge fte ftivia\place where one goes to study}',
         '{mrrtrr sì muntrr\working days and weekend}',
         '{tokxä hapxì a fpìl\part of the body that thinks}',
         '{&lsquo;ewll atsawl\tall plant}',
         '{fwa tse&lsquo;a sutet alahe\seeing other persons}',
         '{kaltxì\hello} -txì -ì'
]
%>
<center>
    <table class='puzzle'>
        <% lengths.zip(offsets, hints) do |length, offset, hint| %>
        <tr class='puzzle-row'>
            <% (1..(offsets.max - offset)).each do %>
                <td class='square'></td>
            <% end %>
            <% (1..length).each do %>
                <td class='square filled'></td>
            <% end %>
            <% (1..(8 + offset - length)).each do %>
                <td class='square'></td>
            <% end %>
            <td class='hint'><%= hint %></td>
        </tr>
        <% end %>
    </table>
</center>

<%#
.........samsiyu..... -> pxaya tute a wem
........sE........... -> sä'o a fte niväk
.........Kagagag..... -> pam awok
........'ewL......... -> rusey a ke lu ioang
.........lu.......... -> kemlì'u a fko sar pxìm frato
.....alaksi.......... -> krra aysìhawl lu hasey
........nìn.......... -> tìng nari
.........numtseg..... -> tseng a fko kä tsatsenge fte ftivia
........kintR........ -> mrrtrr sì muntrr
.......eltu.......... -> tokxä hapxì a fpìl
.......utral......... -> 'ewll atsawl
......ulTa........... -> fwa tse'a sutet alahe
.......gampam........ -> kaltxì -txì -ì
%>

{Lu hasey nga a krr\when you are ready},
{äo fìpostì nga tsun yivem tì'eyngit\you can post the answer below this post}.
{Nìteng rutxe pivlltxe\also please tell}
{ftxey fìingyemtsim lu ngäzìk nìtxan fu ftue nìtxan\whether this puzzle is too hard or too easy}.
{Kxawm ngayop oel ayingyemtsim alahe\maybe I will make other puzzles}
{txo sivunu tsaw ayngar\if you like that} :)

<style>
    .puzzle {
        margin: 25px 0px;
    }
    .square:nth-child(5) {
        background-color: #7097CC;
        color: white;
    }
    .square {
        width: 30px;
        height: 30px;
        text-align: center;
    } 
    .square.filled {
        border: 1px solid black;
    }
</style>

