/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A028881 sequence
-/

namespace Sequence

@[OEIS := A028881, offset := 3, maxIndex := 100, derive := true]
def A028881 (n : ℕ) : ℕ :=
  let x := n - 3
  Int.toNat <| 2 + ((2 + (2 + (2 + x))) * x)

end Sequence