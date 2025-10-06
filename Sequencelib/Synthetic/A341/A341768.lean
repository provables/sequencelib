/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A341768 sequence
-/

namespace Sequence

@[OEIS := A341768, offset := 0, maxIndex := 45, derive := true]
def A341768 (x : ℕ) : ℤ :=
  ((((x * x) - x) / 2) - 2) * x

end Sequence