/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A010943 sequence
-/

namespace Sequence

@[OEIS := A010943, offset := 0, maxIndex := 27, derive := true]
def A010943 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ (((loop (λ (x y) ↦ (x * x) + y) 2 2 * x) + x) / y) - x) x 1

end Sequence