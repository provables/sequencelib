/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A177075 sequence
-/

namespace Sequence

@[OEIS := A177075, offset := 0, maxIndex := 100, derive := true]
def A177075 (x : ℕ) : ℤ :=
  (((((x * x) * x) - 2) - x) * (x * x)) + 1

end Sequence