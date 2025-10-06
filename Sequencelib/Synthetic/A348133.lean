/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A348133 sequence
-/

namespace Sequence

@[OEIS := A348133, offset := 2, maxIndex := 8, derive := true]
def A348133 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| 1 + (2 + (x - (x / 3)))

end Sequence