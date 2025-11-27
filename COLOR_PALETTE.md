# 🎨 Color Palette & Design System

## Primary Colors

### Background Gradient
```
Start: #0a0a0a (Deep Black)
Mid:   #1a0a2e (Deep Purple)
End:   #0f0f1e (Dark Slate)
```

### Usage
- Page backgrounds
- Section backgrounds
- Card backgrounds (with transparency)

---

## Accent Colors

### Purple (Primary Accent)
```
Light:  #c084fc (Hover state)
Main:   #a855f7 (Primary)
Dark:   #7c3aed (Active state)
```

**Usage:**
- Primary buttons
- Links
- Hover effects
- Borders
- Gradients

### Pink (Secondary Accent)
```
Light:  #f472b6 (Hover state)
Main:   #ec4899 (Primary)
Dark:   #be185d (Active state)
```

**Usage:**
- Secondary buttons
- Wishlist icon
- Gradient combinations
- Highlights

### Gold (Tertiary Accent)
```
Light:  #fcd34d (Hover state)
Main:   #d4af37 (Primary)
Dark:   #b8860b (Active state)
```

**Usage:**
- Premium elements
- Special highlights
- Refined accents

### Cyan (Accent)
```
Light:  #22d3ee (Hover state)
Main:   #06b6d4 (Primary)
Dark:   #0891b2 (Active state)
```

**Usage:**
- Information elements
- Links
- Highlights

### Rose (Accent)
```
Light:  #fb7185 (Hover state)
Main:   #f43f5e (Primary)
Dark:   #be185d (Active state)
```

**Usage:**
- Error states
- Delete actions
- Warnings

---

## Neutral Colors

### Slate (Backgrounds)
```
50:   #f8fafc
100:  #f1f5f9
200:  #e2e8f0
300:  #cbd5e1
400:  #94a3b8
500:  #64748b
600:  #475569
700:  #334155
800:  #1e293b
900:  #0f172a
950:  #020617
```

### Gray (Text & Borders)
```
Light:  #d1d5db (Borders)
Main:   #9ca3af (Secondary text)
Dark:   #374151 (Primary text)
```

---

## Gradient Combinations

### Purple to Pink
```css
background: linear-gradient(to right, #a855f7, #ec4899);
```
**Usage:** Primary buttons, hero section

### Purple to Cyan
```css
background: linear-gradient(to right, #a855f7, #06b6d4);
```
**Usage:** Special elements, highlights

### Gold to Orange
```css
background: linear-gradient(to right, #d4af37, #f97316);
```
**Usage:** Premium elements, badges

### Slate to Purple
```css
background: linear-gradient(135deg, #0a0a0a, #1a0a2e);
```
**Usage:** Page backgrounds

---

## Text Colors

### Primary Text
```
Color: #ffffff (White)
Usage: Main content, headings
```

### Secondary Text
```
Color: #d1d5db (Light Gray)
Usage: Descriptions, metadata
```

### Tertiary Text
```
Color: #9ca3af (Medium Gray)
Usage: Placeholders, hints
```

### Accent Text
```
Color: #a855f7 (Purple)
Usage: Links, highlights
```

---

## Component Colors

### Buttons

#### Primary Button
```
Background: linear-gradient(to right, #a855f7, #ec4899)
Text: #ffffff
Hover: Increased shadow
Active: Darker gradient
```

#### Secondary Button
```
Background: transparent
Border: 2px solid #a855f7
Text: #a855f7
Hover: Background color
```

#### Danger Button
```
Background: #f43f5e
Text: #ffffff
Hover: #be185d
```

### Cards

#### Default Card
```
Background: rgba(15, 23, 42, 0.5)
Border: 1px solid rgba(168, 85, 247, 0.2)
Hover: Border color increases
```

#### Glass Card
```
Background: rgba(255, 255, 255, 0.05)
Backdrop: blur(10px)
Border: 1px solid rgba(255, 255, 255, 0.1)
```

### Inputs

#### Text Input
```
Background: rgba(30, 41, 59, 0.5)
Border: 1px solid rgba(168, 85, 247, 0.3)
Focus: Border color #a855f7
Text: #ffffff
Placeholder: #9ca3af
```

### Badges

#### Success Badge
```
Background: rgba(34, 197, 94, 0.2)
Border: 1px solid rgba(34, 197, 94, 0.5)
Text: #86efac
```

#### Warning Badge
```
Background: rgba(234, 179, 8, 0.2)
Border: 1px solid rgba(234, 179, 8, 0.5)
Text: #fde047
```

#### Error Badge
```
Background: rgba(244, 63, 94, 0.2)
Border: 1px solid rgba(244, 63, 94, 0.5)
Text: #fb7185
```

---

## Shadow Effects

### Glow Purple
```css
box-shadow: 0 0 30px rgba(168, 85, 247, 0.4);
```

### Glow Pink
```css
box-shadow: 0 0 30px rgba(236, 72, 153, 0.4);
```

### Glow Gold
```css
box-shadow: 0 0 30px rgba(212, 175, 55, 0.4);
```

### Subtle Shadow
```css
box-shadow: 0 1px 2px rgba(0, 0, 0, 0.05);
```

### Medium Shadow
```css
box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
```

### Large Shadow
```css
box-shadow: 0 10px 15px rgba(0, 0, 0, 0.1);
```

---

## Opacity Levels

### Full Opacity
```
1.0 (100%) - Solid colors
```

### High Opacity
```
0.9 (90%) - Slightly transparent
0.8 (80%) - More transparent
```

### Medium Opacity
```
0.5 (50%) - Semi-transparent
0.4 (40%) - More transparent
```

### Low Opacity
```
0.2 (20%) - Very transparent
0.1 (10%) - Barely visible
```

---

## Animation Colors

### Gradient Animation
```css
background: linear-gradient(90deg, #a855f7, #ec4899, #f97316, #ec4899, #a855f7);
background-size: 200% auto;
animation: textGradient 3s linear infinite;
```

### Glow Pulse
```css
box-shadow: 0 0 20px rgba(168, 85, 247, 0.3);
animation: glowPulse 2s ease-in-out infinite;
```

---

## Accessibility

### Contrast Ratios
- Text on background: 7:1 (AAA)
- Interactive elements: 4.5:1 (AA)
- Large text: 3:1 (AA)

### Color Blindness
- Not relying on color alone
- Using patterns and icons
- Clear text labels

---

## Usage Guidelines

### Do's ✅
- Use purple as primary accent
- Combine purple with pink for gradients
- Use white text on dark backgrounds
- Apply glow effects to interactive elements
- Use consistent opacity levels

### Don'ts ❌
- Don't use too many colors
- Don't mix conflicting gradients
- Don't use low contrast text
- Don't apply glow to everything
- Don't change colors randomly

---

## Color Combinations

### Recommended Pairs
1. Purple + Pink (Primary)
2. Purple + Cyan (Modern)
3. Gold + Orange (Premium)
4. Slate + Purple (Background)

### Avoid
- Purple + Green
- Pink + Orange (too bright)
- Gold + Pink (too warm)

---

## Implementation

### Tailwind CSS
```javascript
// tailwind.config.js
colors: {
  accent: {
    purple: '#a855f7',
    pink: '#ec4899',
    gold: '#d4af37',
    cyan: '#06b6d4',
    rose: '#f43f5e',
  }
}
```

### CSS Variables
```css
:root {
  --color-primary: #a855f7;
  --color-secondary: #ec4899;
  --color-accent: #d4af37;
  --color-text: #ffffff;
  --color-bg: #0a0a0a;
}
```

### Usage in Components
```jsx
// React
<button className="bg-gradient-to-r from-accent-purple to-accent-pink">
  Click me
</button>
```

---

## Testing Colors

### Light Mode (if implemented)
- Invert backgrounds
- Adjust text colors
- Maintain contrast ratios

### Dark Mode (current)
- Deep backgrounds
- Bright accents
- High contrast text

---

## Future Variations

### Seasonal Themes
- Spring: Pastels
- Summer: Bright
- Fall: Warm
- Winter: Cool

### Brand Variations
- Premium: Gold accents
- Modern: Cyan accents
- Playful: Rose accents

---

## Color Palette Export

### Hex Codes
```
Primary Purple: #a855f7
Secondary Pink: #ec4899
Tertiary Gold: #d4af37
Accent Cyan: #06b6d4
Accent Rose: #f43f5e
Background: #0a0a0a
Text: #ffffff
```

### RGB Values
```
Purple: rgb(168, 85, 247)
Pink: rgb(236, 72, 153)
Gold: rgb(212, 175, 55)
Cyan: rgb(6, 182, 212)
Rose: rgb(244, 63, 94)
```

### HSL Values
```
Purple: hsl(280, 85%, 65%)
Pink: hsl(330, 81%, 60%)
Gold: hsl(45, 77%, 52%)
Cyan: hsl(186, 95%, 43%)
Rose: hsl(347, 89%, 62%)
```

---

## Brand Guidelines

### Logo Colors
- Primary: Purple (#a855f7)
- Secondary: Pink (#ec4899)
- Monochrome: White (#ffffff)

### Typography Colors
- Headings: White (#ffffff)
- Body: Light Gray (#d1d5db)
- Links: Purple (#a855f7)

### Interactive Elements
- Buttons: Purple to Pink gradient
- Links: Purple with underline
- Hover: Increased opacity/glow

---

## Accessibility Checklist

- [x] Sufficient contrast ratios
- [x] Color not sole indicator
- [x] Clear focus states
- [x] Readable text sizes
- [x] Consistent styling
- [x] Keyboard navigation

---

**Color Palette Version:** 1.0.0
**Last Updated:** November 26, 2025
**Status:** ✅ Production Ready
