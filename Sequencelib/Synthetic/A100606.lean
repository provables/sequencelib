/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A100606 sequence
-/

namespace Sequence

@[OEIS := A100606, offset := 0, maxIndex := 33, derive := true]
def A100606 (x : ℕ) : ℕ :=
  Int.toNat <| ((1 + x) * ((x * x) * x)) + x

end Sequence