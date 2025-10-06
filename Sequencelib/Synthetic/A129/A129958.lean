/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A129958 sequence
-/

namespace Sequence

@[OEIS := A129958, offset := 0, maxIndex := 40, derive := true]
def A129958 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ ((x + y) + y) + y) x (x % 2) * 2

end Sequence