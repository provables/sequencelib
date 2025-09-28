/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A112300 sequence 
-/


namespace Sequence

@[OEIS := A112300, offset := 1, derive := true, maxIndex := 100]
def A112300 (n : ℕ) : ℤ :=
  let x := n - 1
  ((1 + (x % 2)) * (1 - ((x + x) % 3)))

end Sequence

