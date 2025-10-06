/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A128962 sequence
-/

namespace Sequence

@[OEIS := A128962, offset := 1, maxIndex := 100, derive := true]
def A128962 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x _y) ↦ (1 + x) * loop (λ (x _y) ↦ x + x) (x + x) x) 1 (1 + x) * x

end Sequence