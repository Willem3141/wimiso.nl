---
id: 2016-01-08-sieyng-ingyentsima
title: "Sì'eyng ingyentsimä"
kind: article
created_at: 2016-01-08 22:05
tags:
 - navi-blog-month
 - random
summary: "Fìtsenge ayngaru aysì'eyng ingyentsimtsyìpä trramä..."
needs_popups: true
---

{Fìtsenge ayngaru aysì'eyng\here are for you the answers}
{ingyentsimtsyìpä trramä\of the puzzle of yesterday}.

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
answers = ['samsiyu',
           ['s', 'ey'],
           ['kx', 'a', 'ng', 'a', 'ng', 'a', 'ng'],
           ["'", 'e', 'w', 'll'],
           'lu',
           'alaksi',
           'nìn',
           ['n', 'u', 'm', 'ts', 'e', 'ng'],
           ['k', 'i', 'n', 't', 'rr'],
           'eltu',
           'utral',
           ['u', 'l', 'tx', 'a'],
           ['ng', 'a', 'm']
]
%>
<center>
    <table class='puzzle'>
        <% lengths.zip(offsets, hints, answers) do |length, offset, hint, answer| %>
        <tr class='puzzle-row'>
            <% (1..(offsets.max - offset)).each do %>
                <td class='square'></td>
            <% end %>
            <% length.times do |i| %>
                <td class='square filled'><%= answer[i] %></td>
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

{Furia menga fmoli rivun aysì'eyngit\for the fact that you two tried to find the answers},
{irayo ma Vawmataw sì Blue Elf\thank you Vawmataw and Blue Elf}!

{Tìpawmìri aswey alu\as for the last question} <i>kaltxì -txì -ì</i>,
{kolan oel <i>ngam</i>it\I meant &ldquo;echo&rdquo;}
{taluna\because}
<i>kaltxì -txì -ì</i>
{fkan oer na pam ngamä\sounds to me like the sound of an echo}.

{Hayalovay\until the next time}!

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

