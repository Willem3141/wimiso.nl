---
id: 2015-04-13-tue-identity-numbers
title: "TU/e student identity numbers"
kind: article
created_at: 2015-04-13 14:07
needs_math: true
tags:
 - random
---

In the book *Discrete Wiskunde* by J. H. van Lint and J. W. Nienhuys, I found something interesting about how student identity numbers are formed at the <a href="http://tue.nl">TU/e</a> (my university). <!-- more --> According to this book, a student number of the form $a_0 \, a_1 \, a_2 \, a_3 \, a_4 \, a_5$ is valid iff

$$\sum_{i = 0}^5 (2^{6 + i + a_i} \mod 11)$$

is divisible by $10$. (Note that the book is rather old, and current identity numbers are written with an additional zero in front of them.)

I made a small tool to check a student number. (Leave out the zero in the beginning; the script expects a 6-digit input.)

<form id="number-form" style="text-align: center;">
    <div class="input-group" style="width: 40%;">
        <input id="number-field" class="form-control" type="text" placeholder="Enter student number"></input>
        <span class="input-group-btn">
            <button type="submit" class="btn btn-default">Test</button>
        </span>
    </div>
</form>
<div id="valid-message" class="alert alert-success" style="display: none;">This student number is valid.</div>
<div id="invalid-message" class="alert alert-danger" style="display: none;">This student number is invalid.</div>

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
