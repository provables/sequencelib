/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A278907 sequence
-/

namespace Sequence

@[OEIS := A278907, offset := 0, maxIndex := 100, derive := true]
def A278907 (x : ℕ) : ℕ :=
  Int.toNat <| ((loop (λ (x _y) ↦ (((((loop (λ (x y) ↦ x * y) x x % (1 + x)) % 2) + x) * 2) - 1) - x) 2 (x + 1) + 1) - x) / 2

end Sequence