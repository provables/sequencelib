/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta
import GenSeq

open Synth

/-!
# A134342 sequence 
-/


namespace Sequence

@[OEIS := A134342, offset := 0, derive := true, maxIndex := 20]
def A134342 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y : ℤ) ↦ 2 + ((x / 2) + x)) x 0

end Sequence

