/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A056001 sequence
-/

namespace Sequence

@[OEIS := A056001, offset := 0, maxIndex := 100, derive := true]
def A056001 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ (((2 * ((x + x) + x)) + x) / y) + x) x (1 + x)

end Sequence