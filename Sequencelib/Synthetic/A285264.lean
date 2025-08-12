/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/

import Mathlib
import Sequencelib.Meta
import GenSeq
open Synth

/-!

# A285264 sequence 
-/

namespace Sequence

@[OEIS := A285264, offset := 3, derive := true, maxIndex := 5]
def A285264 (n : ℕ) : ℤ :=
  let x := n - 3
  ((((2 % (1 + x)) + (x % (1 + 2))) * 2) + 1)

end Sequence
