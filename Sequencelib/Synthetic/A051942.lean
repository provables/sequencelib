/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A051942 sequence
-/

namespace Sequence

@[OEIS := A051942, offset := 9, maxIndex := 100, derive := true]
def A051942 (n : ℕ) : ℕ :=
  let x := n - 9
  Int.toNat <| loop (λ (x y) ↦ ((2 * 4) + x) + y) x x

end Sequence