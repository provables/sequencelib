/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A064994 sequence
-/

namespace Sequence

@[OEIS := A064994, offset := 1, maxIndex := 68, derive := true]
def A064994 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((2 + ((((1 + x) / loop (λ (x _y) ↦ (x + x) + x) 2 2) + x) + x)) / 3) + 1) + x

end Sequence