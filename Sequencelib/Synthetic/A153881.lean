/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A153881 sequence 
-/


namespace Sequence

@[OEIS := A153881, offset := 1, derive := true, maxIndex := 100]
def A153881 (n : ℕ) : ℤ :=
  let x := n - 1
  (1 - if x ≤ 0 then 0 else 2)

end Sequence

