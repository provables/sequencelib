/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A337501 sequence
-/

namespace Sequence

@[OEIS := A337501, offset := 1, maxIndex := 10, derive := true]
def A337501 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((1 + ((x - (x / 2)) + x)) * (1 + x)) / 3

end Sequence