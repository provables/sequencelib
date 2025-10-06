/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A161770 sequence
-/

namespace Sequence

@[OEIS := A161770, offset := 1, maxIndex := 18, derive := true]
def A161770 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ loop (λ (x _y) ↦ (2 + (2 * 4)) * x) (2 + y) 1 + x) (x + 1) 0

end Sequence