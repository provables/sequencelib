/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A145509 sequence 
-/


namespace Sequence

@[OEIS := A145509, offset := 1, derive := true, maxIndex := 7]
def A145509 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (1 + (2 * loop (λ (x _y : ℤ) ↦ 2 * ((2 + x) * x)) x 4))

end Sequence

