/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A186002 sequence
-/

namespace Sequence

@[OEIS := A186002, offset := 0, maxIndex := 38, derive := true]
def A186002 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ loop (λ (x y) ↦ 2 * (x * y)) (y - 1) x) x 1

end Sequence