/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A057933 sequence
-/

namespace Sequence

@[OEIS := A057933, offset := 1, maxIndex := 18, derive := true]
def A057933 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((loop (λ (x _y) ↦ (((2 * (2 + (x + x))) + x) * 2) - 1) ((x + 1) + 1) 1 + 1) - 2) / loop (λ (x _y) ↦ (2 * x) + x) 2 2

end Sequence