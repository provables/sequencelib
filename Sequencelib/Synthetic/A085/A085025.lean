/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A085025 sequence
-/

namespace Sequence

@[OEIS := A085025, offset := 0, maxIndex := 39, derive := true]
def A085025 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ 2 + (x + y)) ((1 + x) + x * 4) 0 * 2

end Sequence