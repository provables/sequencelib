/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A132755 sequence
-/

namespace Sequence

@[OEIS := A132755, offset := 0, maxIndex := 45, derive := true]
def A132755 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ x + y) x (loop (λ (x y) ↦ (2 + y) * x) 2 x)

end Sequence