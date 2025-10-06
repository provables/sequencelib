/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A280797 sequence
-/

namespace Sequence

@[OEIS := A280797, offset := 0, maxIndex := 15, derive := true]
def A280797 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ (((x * y) * y) - 1) + y) (λ (_x y) ↦ y) x 0 x

end Sequence