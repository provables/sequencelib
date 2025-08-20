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
# A132367 sequence 
-/


namespace Sequence

@[OEIS := A132367, offset := 0, derive := true, maxIndex := 100]
def A132367 (x : ℕ) : ℤ :=
  loop2 (λ (_x y : ℤ) ↦ y) (λ (x _y : ℤ) ↦ -x) ((x + x) / 3) 1 2

end Sequence

