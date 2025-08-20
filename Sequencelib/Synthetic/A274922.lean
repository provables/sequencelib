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
# A274922 sequence 
-/


namespace Sequence

@[OEIS := A274922, offset := 0, derive := true, maxIndex := 60]
def A274922 (x : ℕ) : ℤ :=
  if x ≤ 0 then 1 else loop (λ (x _y : ℤ) ↦ -x) x x

end Sequence

