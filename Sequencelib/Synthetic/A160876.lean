/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A160876 sequence
-/

namespace Sequence

@[OEIS := A160876, offset := 1, maxIndex := 5, derive := true]
def A160876 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x _y) ↦ 1 + ((2 * ((x + x) + x)) + x)) x 0 * loop (λ (x _y) ↦ 1 + (x + x)) x 1

end Sequence