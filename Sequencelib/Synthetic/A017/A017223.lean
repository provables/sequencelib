/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A017223 sequence
-/

namespace Sequence

@[OEIS := A017223, offset := 0, maxIndex := 22, derive := true]
def A017223 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ (x * x) * x) 1 (loop (λ (x y) ↦ ((x + x) + x) + y) 2 x)

end Sequence