/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A018253 sequence 
-/


namespace Sequence

@[OEIS := A018253, offset := 1, derive := true, maxIndex := 8]
def A018253 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (comprN (λ (x : ℤ) ↦ loop (λ (x y : ℤ) ↦ (2 + y) * x) 2 2 % (1 + x)) x + 1)

end Sequence

