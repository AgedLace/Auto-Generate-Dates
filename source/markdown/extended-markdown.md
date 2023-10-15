---
title: Extended Markdown Syntax
slug: extended-markdown-syntax
publish: true
---

## **Tables**

| Syntax      | Description |
| ----------- | ----------- |
| Header      | Title       |
| Paragraph   | Text        |

### **Table Alignment**

| Syntax      | Description | Test Text     |
| :---        |    :----:   |          ---: |
| Header      | Title       | Here's this   |
| Paragraph   | Text        | And more      |

## **Fenced Code Blocks**

```
{
  "firstName": "John",
  "lastName": "Smith",
  "age": 25
}
```

## **Syntax Highlighting**

```json
{
  "firstName": "John",
  "lastName": "Smith",
  "age": 25
}
```

## **Footnotes**

A simple footnote,.[^1] A longer one.[^2]

## **Heading IDs** {custom-id}

### **Linking To Heading IDs**

[Heading IDs](#custom-id)

## **Definition Lists**

Term One  
: Definition of Term One

Term Two  
: Definition of Term Two  
: Another Defintion of Term Two

## **Strikethrough**

~~Text to strike through.~~ New text here.

## **Task Lists**

- [x] Write Blog Post
- [ ] Update Website
- [ ] Contact Media

## **Emoji**

### **Copying and Pasting Emoji**

* ❤️
* 😍
* ✔️

### **Emoji Shortcodes**

* :tent:
* :joy:
* :heart:

## **Hightlight**

* ==highlighted words==

## **Subscript**

* H~2~O

## **Superscript**

* x^2^

## **Automatic URL Linking**

<https://www.example.com> <!-- This one did not work locally -->

### **Disable Automatic URL Linking**

`{ my code }`

[^1]: This is the simple footnote.
[^2]: This is the bigger one.

		Indent paragraphs to include them in the footnote.

		`https://www.example.com`

		Add as many paragraphs as you like.
