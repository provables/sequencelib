/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A151746 sequence 
-/


namespace Sequence

@[OEIS := A151746, offset := 0, derive := true, maxIndex := 26]
def A151746 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y : ℤ) ↦ 2 * ((x - y) + x)) (if x ≤ 0 then x else 1 + x) 1

end Sequence

