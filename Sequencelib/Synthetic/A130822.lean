/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A130822 sequence 
-/


namespace Sequence

@[OEIS := A130822, offset := 1, derive := true, maxIndex := 78]
def A130822 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y : ℤ) ↦ (y / loop (λ (x y : ℤ) ↦ x + y) x (x % 2)) + x) x 1

end Sequence

