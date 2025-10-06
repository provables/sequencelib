/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A056541 sequence
-/

namespace Sequence

@[OEIS := A056541, offset := 0, maxIndex := 100, derive := true]
def A056541 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ 1 + (2 * (x * y))) x 0

end Sequence