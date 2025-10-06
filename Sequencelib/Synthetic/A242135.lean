/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A242135 sequence
-/

namespace Sequence

@[OEIS := A242135, offset := 0, maxIndex := 100, derive := true]
def A242135 (x : ℕ) : ℤ :=
  ((x * x) - 2) * x

end Sequence