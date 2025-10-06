/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A187012 sequence
-/

namespace Sequence

@[OEIS := A187012, offset := 2, maxIndex := 100, derive := true]
def A187012 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| ((((x * x) / 2) % (1 + x)) + 1) + x

end Sequence