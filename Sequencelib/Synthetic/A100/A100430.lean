/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A100430 sequence
-/

namespace Sequence

@[OEIS := A100430, offset := 0, maxIndex := 100, derive := true]
def A100430 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ (((x + x) + x) / y) + x) (x + x) ((x * 2) + 1)

end Sequence