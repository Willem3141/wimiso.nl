---
id: 2015-04-13-tue-identity-numbers
title: "TU/e-studentnummers"
kind: article
created_at: 2015-04-13 14:07
needs_math: true
tags:
 - random
---

In het boek *Discrete Wiskunde* (door J. H. van Lint en J. W. Nienhuys), heb ik iets interessants ontdekt over hoe studentnummers op de <a href="http://tue.nl">TU/e</a> (mijn universiteit) werken. <!-- more --> Volgens dit boek is een studentnummer van de vorm $a_0 \, a_1 \, a_2 \, a_3 \, a_4 \, a_5$ geldig dan en slechts dan als

$$\sum_{i = 0}^5 (2^{6 + i + a_i} \mod 11)$$

deelbaar is door $10$. (Merk op dat het boek vrij oud is; tegenwoordig worden studentnummers met een extra nul ervoor geschreven.)

Hier is een klein scriptje om een studentnummer te controleren. (Laat de nul op het begin weg; het script verwacht een input van 6 cijfers.)

<form id="number-form" style="text-align: center;">
    <div class="input-group" style="width: 40%;">
        <input id="number-field" class="form-control" type="text" placeholder="Voer een studentnummer in"></input>
        <span class="input-group-btn">
            <button type="submit" class="btn btn-default">Test</button>
        </span>
    </div>
</form>
<div id="valid-message" class="alert alert-success" style="display: none;">Dit studentnummer is geldig.</div>
<div id="invalid-message" class="alert alert-danger" style="display: none;">Dit studentnummer is niet geldig.</div>

<script>
    var powersOfTwo = [0, 0, 0, 0, 0, 0, 9, 7, 3, 6, 1, 2, 4, 8, 5, 10, 9, 7, 3, 6, 1];
    
    function checkIdentityNumber() {
        var val = $('#number-field').val()
        
        var sum = 0
        for (var i = 0; i < 6; i++) {
            sum += powersOfTwo[6 + i + parseInt(val[i], 10)]
        }
        
        if (sum % 10 == 0) {
            $('#valid-message').slideUp()
            $('#valid-message').slideDown()
            $('#invalid-message').slideUp()
        } else {
            $('#invalid-message').slideUp()
            $('#invalid-message').slideDown()
            $('#valid-message').slideUp()
        }
        
        return false;
    }
    
    $(function() {
        $('#number-form').on('submit', checkIdentityNumber);
    })
</script>
