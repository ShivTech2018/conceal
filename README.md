## Read documents ? [![Build Status](https://travis-ci.org/facebook/conceal.svg?branch=master)](https://travis-ci.org/facebook/conceal)

Visit the original project:  
[https://github.com/facebookarchive/conceal](https://github.com/facebookarchive/conceal)

# Conceal – 16KB Aligned Build

This project provides a custom build of the archived Conceal library with **16 KB–aligned native binaries**.  
The goal is to improve compatibility on devices that require strict memory alignment.

---

## 📦 Download

**Aligned .aar file:**  
[Download conceal.aar](https://github.com/ShivTech2018/conceal--16kb-aligned/blob/2025/conceal.aar)

---

## 🔍 What This Build Delivers

- 16 KB alignment applied to native `.so` binaries  
- Better compatibility on devices that fail to load misaligned libraries  
- Drop-in replacement for the original Conceal API  
- No modifications to encryption behavior

---

## 📚 Original Source

Facebook Archive:  
https://github.com/facebookarchive/conceal

---

## Notes

Only alignment changes were made.  
Encryption logic, behavior, and API remain untouched.
