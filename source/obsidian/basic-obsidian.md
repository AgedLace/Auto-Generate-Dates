---
title: Basic Obsidian
slug: basic-obsidian
publish: true  # for draft, set to 'false'
---

## Obsidian Basic Syntax

## **Paragraphs**

This is a paragraph.

This is another paragraph.

## **Headings**

# Heading 1
## Heading 2
### Heading 3
#### Heading 4
##### Heading 5
###### Heading 6

## **Styling Text**

### **Bold**

**This is bold text**

### **Italic**

*This is italic text*

### **Bold and Italic**

***This is bold and italic***

### **Bold and Nested Italic**

**This is bold and *nested italic***

### **Strikethrough**

~~This is strikethrough text~~

### **Hightlight**

==This text is highlighted==

## **Blockquotes**

> This is a blockquote

![[../callouts#Obsidian Callouts|callouts]]

%% 
- This embedded note is not rendered in the locally generated website.
- Also note that comments show up on the web page. 
- %%

## **Code**

### **Inline Code**

This `code` is inline.

### **Code Blocks**

```
This is a code block
```

### **Code Blocks with Syntax Highlighting**

```js
This is a code block with syntax highlighting enabled.
```

## **Links**

### **External Links**

[Some External Website](https://some-external-website.com)

### **External Link to Another Obsidian Vault**

[Note](obsidian://open?vault=MainVault&file=Note.md)

### **Escape Blank Spaces In Links**

[My Note](obsidian://open?vault=MainVault&file=My%20Note.md)

or wrap in angled brackets

[My Note](<obsidian://open?vault=MainVault&file=My Note.md>)

## **External Images**

![Engelbart](https://history-computer.com/ModernComputer/Basis/images/Engelbart.jpg)

### **Change Image Dimensions**

![Engelbart|100x145](https://history-computer.com/ModernComputer/Basis/images/Engelbart.jpg)

To keep aspect ration, just specify the width

![Engelbart|150](https://history-computer.com/ModernComputer/Basis/images/Engelbart.jpg)

## **Add Internal Image By Embedding**

![[assets/tux.png]]

## **Lists**

### **Unordered**

- First list item 
- Second list item 
- Third list item

### **Ordered**

1. First Item
2. Second
3. Third

### **Nested and Mixed Nested Lists**

1. First list item 
	1. Ordered nested list item 
2. Second list item 
  - Unordered nested
- Unordered list item
	- Unordered nested
	1. Ordered nested

## **Task Lists**

- [x] Completed Task
- [ ] Not yet completed

## **Horizontal Rule**

---

## **Footnotes**

This is a simple footnote[^1]. 

[^1]: This is the referenced text. 
[^2]: Add 2 spaces at the start of each new line. 

This lets you write footnotes that span multiple lines. 
[^note]: Named footnotes still appear as numbers, but can make it easier to identify and link references.

### **Inline Footnotes**

You can also use inline footnotes. ^[This is an inline footnote.]

## **Comments**

### **Inline**

This is an %%inline%% comment.

### **Block Comments**

%% 
This is a block comment. 

Block comments can span multiple lines. 
%%

