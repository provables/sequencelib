/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A066061 sequence
-/

namespace Sequence

@[OEIS := A066061, offset := 0, maxIndex := 19, derive := true]
def A066061 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ (x * y) + x) ((x * x) + x) 1

end Sequence