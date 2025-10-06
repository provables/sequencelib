/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A250492 sequence
-/

namespace Sequence

@[OEIS := A250492, offset := 0, maxIndex := 3, derive := true]
def A250492 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ loop2 (λ (_x y) ↦ y) (λ (x y) ↦ x + y) ((x * x) * x) 0 1) 1 (x * x)

end Sequence