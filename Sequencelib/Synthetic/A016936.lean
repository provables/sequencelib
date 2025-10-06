/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A016936 sequence
-/

namespace Sequence

@[OEIS := A016936, offset := 0, maxIndex := 26, derive := true]
def A016936 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ x * x) 2 (2 + (2 * ((x + x) + x)))

end Sequence