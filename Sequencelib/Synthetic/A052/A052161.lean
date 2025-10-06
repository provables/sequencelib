/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A052161 sequence
-/

namespace Sequence

@[OEIS := A052161, offset := 0, maxIndex := 100, derive := true]
def A052161 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ loop (λ (x y) ↦ x + y) y ((x + x) * 2)) (1 + x) 0

end Sequence