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
# A277986 sequence 
-/


namespace Sequence

@[OEIS := A277986, offset := 0, derive := true, maxIndex := 44]
def A277986 (x : ℕ) : ℤ :=
  (2 * (loop (λ (x _y : ℤ) ↦ (2 * ((x + x) + x)) - 1) 2 x + x))

end Sequence

