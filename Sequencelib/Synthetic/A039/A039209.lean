/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A039209 sequence
-/

namespace Sequence

@[OEIS := A039209, offset := 1, maxIndex := 70, derive := true]
def A039209 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (2 * loop (λ (x _y) ↦ x / 3) 2 x) + x

end Sequence