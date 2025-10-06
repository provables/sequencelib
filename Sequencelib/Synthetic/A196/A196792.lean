/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A196792 sequence
-/

namespace Sequence

@[OEIS := A196792, offset := 0, maxIndex := 100, derive := true]
def A196792 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ 1 + (loop (λ (x y) ↦ (2 + y) * x) 2 x + x)) x 0 + 1

end Sequence