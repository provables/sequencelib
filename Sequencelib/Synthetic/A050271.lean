/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A050271 sequence 
-/


namespace Sequence

@[OEIS := A050271, offset := 1, derive := true, maxIndex := 100]
def A050271 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop (λ (x y : ℤ) ↦ (y + x) + y) ((x - 1) / 3) x + 1)

end Sequence

