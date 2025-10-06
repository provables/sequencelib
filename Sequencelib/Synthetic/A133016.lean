/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A133016 sequence
-/

namespace Sequence

@[OEIS := A133016, offset := 1, maxIndex := 62, derive := true]
def A133016 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((((x / 2) + x) + x) / (1 + (2 + x))) + 1) + x

end Sequence