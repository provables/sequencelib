/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A114641 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A114641, offset := 1, maxIndex := 7, derive := true]
def A114641 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (x y) ↦ loop (λ (x _y) ↦ x + x) y x) (λ (x _y) ↦ x) x 1 1

end Sequence