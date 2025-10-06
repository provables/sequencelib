/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A051939 sequence
-/

namespace Sequence

@[OEIS := A051939, offset := 6, maxIndex := 100, derive := true]
def A051939 (n : ℕ) : ℕ :=
  let x := n - 6
  Int.toNat <| loop (λ (x y) ↦ loop (λ (x y) ↦ x + y) (2 + y) x + (y + y) * 2) x 1 + 2

end Sequence