/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A080036 sequence
-/

namespace Sequence

@[OEIS := A080036, offset := 0, maxIndex := 100, derive := true]
def A080036 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x y) ↦ (y / loop (λ (x y) ↦ x + y) x 1) + x) x 0 + 1) + x

end Sequence