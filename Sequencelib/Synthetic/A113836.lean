/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A113836 sequence
-/

namespace Sequence

@[OEIS := A113836, offset := 1, maxIndex := 26, derive := true]
def A113836 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ loop (λ (x _y) ↦ x + x) ((y / 2) + y) 1 + x) x 1

end Sequence