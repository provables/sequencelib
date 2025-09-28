/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A174443 sequence 
-/


namespace Sequence

@[OEIS := A174443, offset := 0, derive := true, maxIndex := 100]
def A174443 (x : ℕ) : ℤ :=
  (loop2 (λ (_x y : ℤ) ↦ y + y) (λ (x y : ℤ) ↦ 2 * ((x - y) * 2)) x 0 1 / 2)

end Sequence

