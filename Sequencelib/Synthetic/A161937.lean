/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A161937 sequence 
-/


namespace Sequence

@[OEIS := A161937, offset := 1, derive := true, maxIndex := 20]
def A161937 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y : ℤ) ↦ (1 + (2 * (x - (x % 2)))) * (1 + y)) x 1

end Sequence

