/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A047929 sequence
-/

namespace Sequence

@[OEIS := A047929, offset := 2, maxIndex := 34, derive := true]
def A047929 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| (1 + x) * ((2 + x) * ((2 + x) * x))

end Sequence