/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A114870 sequence
-/

namespace Sequence

@[OEIS := A114870, offset := 0, maxIndex := 100, derive := true]
def A114870 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ loop (λ (x y) ↦ 1 + (x * y)) y 0 + x * y) x 0

end Sequence