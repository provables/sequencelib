/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A126565 sequence
-/

namespace Sequence

@[OEIS := A126565, offset := 0, maxIndex := 100, derive := true]
def A126565 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x y) ↦ (((x / 2) / 2) + y) / 3) x 0 + x) % 2

end Sequence