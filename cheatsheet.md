# things to remember

### Script

<script type="text/x-mathjax-config">
        MathJax.Hub.Config({
                tex2jax: {
                        inlineMath: [['$', '$']]
                }
        });
</script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.0/MathJax.js?config=TeX-AMS-MML_HTMLorMML" type="text/javascript"></script>

### Markdown component

Formulas:

$$
\int_0^1 \sqrt{(dx / dt)^2 + (dy / dt)^2}\ dt
$$

SVGS:
<svg width="480" height="240">
    <path d="m100 10 q100 0 200 200" stroke="black" fill="none" />
    <path d="m100 10 l100 0 100 200" stroke="black" stroke-dasharray="4, 6" fill="none" />
    <text x="90" y="110">Lc = 0.956 L</text>
    <path d="m100 10 l200 200" stroke="black" stroke-dasharray="5,5" fill="none" />
    <text x="210" y="20">Lp =1.094 L</text>
    <text x="260" y="80">(2Lc + Lp)/3 = 1.002 L</text>
    <circle cx="100" cy="10" r="2" fill="black" />
    <circle cx="200" cy="10" r="2" fill="black" />
    <circle cx="300" cy="210" r="2" fill="black" />
</svg>

Code blocks:
```rust
    let est_err = 0.06 * (lp - lc) * (x * x + y * y).powi(2);
```
