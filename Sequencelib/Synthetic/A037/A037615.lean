/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A037615 sequence
-/

namespace Sequence

@[OEIS := A037615, offset := 1, maxIndex := 21, derive := true]
def A037615 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x _y) ↦ loop (λ (x y) ↦ (((x + x) % y) + x) + x) 3 x + 1) x 1

end Sequence