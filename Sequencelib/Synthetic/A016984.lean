/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A016984 sequence
-/

namespace Sequence

@[OEIS := A016984, offset := 0, maxIndex := 20, derive := true]
def A016984 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ x * x) 2 ((2 * ((x + x) + x)) + x)

end Sequence